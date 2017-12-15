.class public final Landroid/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_VENDOR_SPECIFIC_HEADSET_EVENT:Ljava/lang/String; = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

.field public static final AT_CMD_TYPE_ACTION:I = 0x4

.field public static final AT_CMD_TYPE_BASIC:I = 0x3

.field public static final AT_CMD_TYPE_READ:I = 0x0

.field public static final AT_CMD_TYPE_SET:I = 0x2

.field public static final AT_CMD_TYPE_TEST:I = 0x1

.field private static final DBG:Z

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

.field public static final STATE_AUDIO_CONNECTED:I = 0xc

.field public static final STATE_AUDIO_CONNECTING:I = 0xb

.field public static final STATE_AUDIO_DISCONNECTED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadset"

.field private static final VDBG:Z = false

.field public static final VENDOR_RESULT_CODE_COMMAND_ANDROID:Ljava/lang/String; = "+ANDROID"

.field public static final VENDOR_SPECIFIC_CMD_OP_CODE_CALL_TYPE:I = 0x1e

.field public static final VENDOR_SPECIFIC_CMD_OP_CODE_EXTENDED_CALL_STATE:I = 0x14

.field public static final VENDOR_SPECIFIC_CMD_OP_CODE_TIME:I = 0xa

.field public static final VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY:Ljava/lang/String; = "android.bluetooth.headset.intent.category.companyid"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHeadset;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v2, Landroid/bluetooth/BluetoothHeadset$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadset$1;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1209
    new-instance v2, Landroid/bluetooth/BluetoothHeadset$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadset$2;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    .line 281
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    .line 282
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 283
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 285
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 286
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_3c

    .line 288
    :try_start_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 289
    const-string v2, "BluetoothHeadset"

    const-string v3, "BTStateChangeCB is registed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2f} :catch_33

    .line 297
    :goto_2f
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->doBind()Z

    .line 298
    return-void

    .line 290
    :catch_33
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadset"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    const-string v2, "BluetoothHeadset"

    const-string v3, "IBluetoothManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHeadset;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method public static isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isDisabled()Z
    .registers 3

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    .line 1236
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isEnabled()Z
    .registers 3

    .prologue
    .line 1230
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    .line 1231
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

    .line 1240
    if-nez p1, :cond_4

    .line 1243
    :cond_3
    :goto_3
    return v0

    .line 1242
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
    .line 1247
    const-string v0, "BluetoothHeadset"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 674
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "acceptIncomingConnect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 675
    :cond_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 677
    :try_start_13
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    .line 683
    :goto_19
    return v1

    .line 678
    :catch_1a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_24
    :goto_24
    const/4 v1, 0x0

    goto :goto_19

    .line 680
    :cond_26
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_24

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public clccResponse(IIIIZLjava/lang/String;I)V
    .registers 17
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "status"    # I
    .param p4, "mode"    # I
    .param p5, "mpty"    # Z
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "type"    # I

    .prologue
    .line 903
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v0, :cond_23

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 905
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 913
    :cond_17
    :goto_17
    return-void

    .line 906
    :catch_18
    move-exception v8

    .line 907
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothHeadset"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 910
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_23
    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "BluetoothHeadset"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method close()V
    .registers 7

    .prologue
    .line 323
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 324
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_35

    .line 326
    :try_start_8
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 327
    const-string v3, "BluetoothHeadset"

    const-string v4, "BTStateChangeCB is unregisted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_2c

    .line 335
    :goto_14
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 336
    :try_start_17
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_46

    if-eqz v3, :cond_25

    .line 338
    const/4 v3, 0x0

    :try_start_1c
    iput-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    .line 339
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_3d
    .catchall {:try_start_1c .. :try_end_25} :catchall_46

    .line 344
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_46

    .line 345
    monitor-enter p0

    .line 346
    const/4 v3, 0x0

    :try_start_28
    iput-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 347
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_49

    .line 348
    return-void

    .line 328
    :catch_2c
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothHeadset"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    const-string v3, "BluetoothHeadset"

    const-string v4, "IBluetoothManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 340
    :catch_3d
    move-exception v2

    .line 341
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3e
    const-string v3, "BluetoothHeadset"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 344
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_46
    move-exception v3

    monitor-exit v4
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    throw v3

    .line 347
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 373
    sget-boolean v2, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v2, :cond_21

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

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 374
    :cond_21
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v2, :cond_48

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 377
    :try_start_31
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_38

    move-result v1

    .line 384
    :cond_37
    :goto_37
    return v1

    .line 378
    :catch_38
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadset"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v2, :cond_37

    const-string v2, "BluetoothHeadset"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public connectAudio()Z
    .registers 2

    .prologue
    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 768
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 770
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 778
    :goto_10
    return v1

    .line 771
    :catch_11
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 775
    :cond_1d
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1b

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public disableWBS()Z
    .registers 4

    .prologue
    .line 986
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 988
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->disableWBS()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 996
    :goto_10
    return v1

    .line 989
    :catch_11
    move-exception v0

    .line 990
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 993
    :cond_1d
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1b

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 414
    sget-boolean v2, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v2, :cond_21

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

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 415
    :cond_21
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v2, :cond_48

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 418
    :try_start_31
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_38

    move-result v1

    .line 425
    :cond_37
    :goto_37
    return v1

    .line 419
    :catch_38
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadset"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 424
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v2, :cond_37

    const-string v2, "BluetoothHeadset"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public disconnectAudio()Z
    .registers 4

    .prologue
    .line 791
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 793
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectAudio()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 801
    :goto_10
    return v1

    .line 794
    :catch_11
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 798
    :cond_1d
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1b

    const-string v1, "BluetoothHeadset"

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

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 303
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    if-eqz v0, :cond_29

    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 306
    :cond_29
    const-string v3, "BluetoothHeadset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Headset Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_41
    return v2

    .line 309
    :cond_42
    const-string v2, "BluetoothHeadset"

    const-string v3, "BluetoothHeadset service is binded"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v2, 0x1

    goto :goto_41
.end method

.method public enableWBS()Z
    .registers 4

    .prologue
    .line 964
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 966
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->enableWBS()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 974
    :goto_10
    return v1

    .line 967
    :catch_11
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 971
    :cond_1d
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1b

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 711
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1e

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 713
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 719
    :goto_10
    return v1

    .line 714
    :catch_11
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/16 v1, 0xa

    goto :goto_10

    .line 716
    :cond_1e
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1b

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 644
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 647
    :try_start_10
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    .line 653
    :goto_16
    return v1

    .line 648
    :catch_17
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_31

    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_31
    const/4 v1, -0x1

    goto :goto_16
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
    .line 433
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 435
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getConnectedDevices()Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 442
    :goto_10
    return-object v1

    .line 436
    :catch_11
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_31

    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
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

    .line 467
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v2, :cond_34

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 470
    :try_start_11
    const-string v2, "getConnectionState() in if statement"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1d

    move-result v1

    .line 479
    :cond_1c
    :goto_1c
    return v1

    .line 472
    :catch_1d
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadset"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v2, "BluetoothHeadset"

    const-string v3, "RemoteException is occur"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 478
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v2, :cond_1c

    const-string v2, "BluetoothHeadset"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
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
    .line 450
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 452
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 459
    :goto_10
    return-object v1

    .line 453
    :catch_11
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    .line 458
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_31

    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 531
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v2, :cond_28

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 534
    :try_start_11
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    .line 541
    :cond_17
    :goto_17
    return v1

    .line 535
    :catch_18
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadset"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v2, :cond_17

    const-string v2, "BluetoothHeadset"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1059
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_24

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1061
    :try_start_a
    const-string v1, "BluetoothHeadset"

    const-string v2, "getSamsungHandsfreeDeviceType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_18

    move-result-object v1

    .line 1070
    :goto_17
    return-object v1

    .line 1063
    :catch_18
    move-exception v0

    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    const/4 v1, 0x0

    goto :goto_17

    .line 1067
    :cond_24
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_22

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 616
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 619
    :try_start_10
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    .line 625
    :goto_16
    return v1

    .line 620
    :catch_17
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_31

    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_31
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public isAudioOn()Z
    .registers 4

    .prologue
    .line 733
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_20

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 735
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->isAudioOn()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 741
    :goto_10
    return v1

    .line 736
    :catch_11
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_2b

    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_2b
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isDualHfConnected()Z
    .registers 4

    .prologue
    .line 1079
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_24

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1081
    :try_start_a
    const-string v1, "BluetoothHeadset"

    const-string v2, "isDualHfConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->isDualHfConnected()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_18

    move-result v1

    .line 1090
    :goto_17
    return v1

    .line 1083
    :catch_18
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    const/4 v1, 0x0

    goto :goto_17

    .line 1087
    :cond_24
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_22

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public phoneStateChanged(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 863
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v0, :cond_20

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 865
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 873
    :cond_14
    :goto_14
    return-void

    .line 866
    :catch_15
    move-exception v6

    .line 867
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothHeadset"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 870
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_20
    const-string v0, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "BluetoothHeadset"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public registerMessageListener(ILcom/samsung/bt/hfp/IMessageListener;)Z
    .registers 7
    .param p1, "appId"    # I
    .param p2, "listener"    # Lcom/samsung/bt/hfp/IMessageListener;

    .prologue
    .line 1150
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_56

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1153
    :try_start_3b
    const-string v1, "BluetoothHeadset"

    const-string/jumbo v2, "registerMessageListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset;->registerMessageListener(ILcom/samsung/bt/hfp/IMessageListener;)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_48} :catch_4a

    move-result v1

    .line 1162
    :goto_49
    return v1

    .line 1155
    :catch_4a
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    const/4 v1, 0x0

    goto :goto_49

    .line 1159
    :cond_56
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_54

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 691
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "rejectIncomingConnect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 692
    :cond_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_21

    .line 694
    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v1

    .line 700
    :goto_14
    return v1

    .line 695
    :catch_15
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    goto :goto_14

    .line 697
    :cond_21
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1f

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public roamChanged(Z)V
    .registers 5
    .param p1, "roaming"    # Z

    .prologue
    .line 884
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 886
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->roamChanged(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 894
    :cond_f
    :goto_f
    return-void

    .line 887
    :catch_10
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 891
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "appId"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1122
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_50

    .line 1123
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessageToHeadset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :goto_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_84

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_84

    if-eqz p1, :cond_84

    .line 1129
    :try_start_41
    const-string v1, "BluetoothHeadset"

    const-string/jumbo v2, "send Message To Headset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHeadset;->sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4e} :catch_78

    move-result v1

    .line 1138
    :goto_4f
    return v1

    .line 1125
    :cond_50
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessageToHeadset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 1131
    :catch_78
    move-exception v0

    .line 1132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_82
    :goto_82
    const/4 v1, 0x0

    goto :goto_4f

    .line 1135
    :cond_84
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_82

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

.method public sendVendorSpecificResponse(ILjava/lang/String;)Z
    .registers 7
    .param p1, "opcode"    # I
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 1033
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_4e

    .line 1034
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVendorSpecificResponse : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_82

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1040
    :try_start_3f
    const-string v1, "BluetoothHeadset"

    const-string/jumbo v2, "send Vendor Specific Response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset;->sendVendorSpecificResponse(ILjava/lang/String;)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4c} :catch_76

    move-result v1

    .line 1049
    :goto_4d
    return v1

    .line 1036
    :cond_4e
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVendorSpecificResponse : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 1042
    :catch_76
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_80
    :goto_80
    const/4 v1, 0x0

    goto :goto_4d

    .line 1046
    :cond_82
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_80

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method public sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 935
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_a

    .line 936
    const-string/jumbo v1, "sendVendorSpecificResultCode()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 938
    :cond_a
    if-nez p2, :cond_14

    .line 939
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "command is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :cond_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_3a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 944
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2b

    move-result v1

    .line 952
    :goto_2a
    return v1

    .line 945
    :catch_2b
    move-exception v0

    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_45

    .line 950
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_45
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const/4 v1, 0x0

    .line 498
    sget-boolean v2, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v2, :cond_2c

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

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 499
    :cond_2c
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v2, :cond_5a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 501
    if-eqz p2, :cond_43

    const/16 v2, 0x64

    if-eq p2, v2, :cond_43

    .line 513
    :cond_42
    :goto_42
    return v1

    .line 506
    :cond_43
    :try_start_43
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_4a

    move-result v1

    goto :goto_42

    .line 507
    :catch_4a
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadset"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5a
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v2, :cond_42

    const-string v2, "BluetoothHeadset"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public setScoPath(I)Z
    .registers 5
    .param p1, "sco_path"    # I

    .prologue
    .line 1008
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1010
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->setScoPath(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 1018
    :goto_10
    return v1

    .line 1011
    :catch_11
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 1015
    :cond_1d
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1b

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 816
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "startScoUsingVirtualVoiceCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 817
    :cond_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_2d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 819
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result v1

    .line 827
    :goto_20
    return v1

    .line 820
    :catch_21
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    const/4 v1, 0x0

    goto :goto_20

    .line 824
    :cond_2d
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 566
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startVoiceRecognition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 567
    :cond_21
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_4d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 570
    :try_start_31
    const-string/jumbo v1, "startVoiceRecognition() in if statement"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3e

    move-result v1

    .line 578
    :goto_3d
    return v1

    .line 572
    :catch_3e
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_5a

    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_58
    :goto_58
    const/4 v1, 0x0

    goto :goto_3d

    .line 577
    :cond_5a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "BluetoothHeadset"

    const-string v2, "Can\'t startVoiceRecognition when Bluetooth is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method public stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 839
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "stopScoUsingVirtualVoiceCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 840
    :cond_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_2d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 842
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result v1

    .line 850
    :goto_20
    return v1

    .line 843
    :catch_21
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    const/4 v1, 0x0

    goto :goto_20

    .line 847
    :cond_2d
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 592
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "stopVoiceRecognition()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 593
    :cond_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_30

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 596
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result v1

    .line 602
    :goto_20
    return v1

    .line 597
    :catch_21
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v1, :cond_3b

    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_3b
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public switchAudio()Z
    .registers 4

    .prologue
    .line 1099
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_25

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1101
    :try_start_a
    const-string v1, "BluetoothHeadset"

    const-string/jumbo v2, "switchAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->switchAudio()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_19

    move-result v1

    .line 1110
    :goto_18
    return v1

    .line 1103
    :catch_19
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    const/4 v1, 0x0

    goto :goto_18

    .line 1107
    :cond_25
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_23

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public unRegisterMessageListener(I)Z
    .registers 6
    .param p1, "appId"    # I

    .prologue
    .line 1172
    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unRegisterMessageListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_4c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1175
    :try_start_31
    const-string v1, "BluetoothHeadset"

    const-string/jumbo v2, "unRegisterMessageListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->unRegisterMessageListener(I)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_40

    move-result v1

    .line 1184
    :goto_3f
    return v1

    .line 1177
    :catch_40
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    goto :goto_3f

    .line 1181
    :cond_4c
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_4a

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public updateCallState(III)V
    .registers 7
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I

    .prologue
    .line 1196
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1198
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHeadset;->updateCallState(III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 1206
    :cond_f
    :goto_f
    return-void

    .line 1199
    :catch_10
    move-exception v0

    .line 1200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const-string v1, "BluetoothHeadset"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
