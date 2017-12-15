.class public final Landroid/bluetooth/BtCallback;
.super Ljava/lang/Object;
.source "BtCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BtCallback$BluetoothUniversalCb;
    }
.end annotation


# static fields
.field public static final BT_COMMNAD_ID_GAP_REGISTER_CALLBACK:I = 0x3e8

.field public static final BT_COMMNAD_ID_GAP_UNREGISTER_CALLBACK:I = 0x3e9

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BtCallback"

.field private static sBtCallback:Landroid/bluetooth/BtCallback;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BtCallback$BluetoothUniversalCb;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mService:Landroid/bluetooth/IBluetooth;

.field private final mUCallback:Landroid/bluetooth/IBtUCallback;

.field private mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .registers 5
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 175
    new-instance v1, Landroid/bluetooth/BtCallback$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BtCallback$1;-><init>(Landroid/bluetooth/BtCallback;)V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    .line 197
    new-instance v1, Landroid/bluetooth/BtCallback$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BtCallback$2;-><init>(Landroid/bluetooth/BtCallback;)V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 89
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 90
    iput-object p1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 91
    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_2a

    .line 93
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_3d

    .line 96
    :cond_2a
    :goto_2a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    .line 97
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mUuid:Landroid/os/ParcelUuid;

    .line 98
    return-void

    .line 94
    :catch_3d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BtCallback"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method static synthetic access$000(Landroid/bluetooth/BtCallback;)Landroid/bluetooth/IBtUCallback;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BtCallback;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BtCallback;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BtCallback;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BtCallback;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BtCallback;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BtCallback;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BtCallback;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method public static declared-synchronized getBtCallback()Landroid/bluetooth/BtCallback;
    .registers 5

    .prologue
    .line 71
    const-class v3, Landroid/bluetooth/BtCallback;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;

    if-nez v2, :cond_1a

    .line 72
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1e

    .line 74
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 75
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v2, Landroid/bluetooth/BtCallback;

    invoke-direct {v2, v1}, Landroid/bluetooth/BtCallback;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v2, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;

    .line 80
    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_1a
    :goto_1a
    sget-object v2, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_26

    monitor-exit v3

    return-object v2

    .line 77
    :cond_1e
    :try_start_1e
    const-string v2, "BtCallback"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 71
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private sendMessage(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "svc"    # Ljava/lang/String;
    .param p2, "isRegister"    # Z

    .prologue
    .line 139
    const-string v2, "BtCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", register: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/bluetooth/BtUCallbackData;

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mUuid:Landroid/os/ParcelUuid;

    invoke-direct {v1, p1, v2}, Landroid/bluetooth/BtUCallbackData;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 142
    .local v1, "cbData":Landroid/bluetooth/BtUCallbackData;
    const-string v2, "cbData"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    if-eqz p2, :cond_40

    .line 144
    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x3e8

    iget-object v4, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    invoke-virtual {v2, v3, v0, v4}, Landroid/bluetooth/BluetoothAdapter;->callBtCommonApi(ILandroid/os/Bundle;Landroid/bluetooth/IBtUCallback;)Z

    .line 148
    :goto_3f
    return-void

    .line 146
    :cond_40
    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x3e9

    iget-object v4, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    invoke-virtual {v2, v3, v0, v4}, Landroid/bluetooth/BluetoothAdapter;->callBtCommonApi(ILandroid/os/Bundle;Landroid/bluetooth/IBtUCallback;)Z

    goto :goto_3f
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 160
    return-void

    .line 158
    :catchall_b
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCallback(Ljava/lang/String;Landroid/bluetooth/BtCallback$BluetoothUniversalCb;)Z
    .registers 7
    .param p1, "svc"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/bluetooth/BtCallback$BluetoothUniversalCb;

    .prologue
    const/4 v0, 0x1

    .line 105
    const-string v1, "BtCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback: cb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    monitor-enter v1

    .line 107
    if-eqz p2, :cond_3a

    :try_start_1f
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 108
    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BtCallback;->sendMessage(Ljava/lang/String;Z)V

    .line 114
    monitor-exit v1

    .line 116
    :goto_39
    return v0

    .line 111
    :cond_3a
    const-string v0, "BtCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback is not registered, svc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_39

    .line 114
    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_1f .. :try_end_57} :catchall_55

    throw v0
.end method

.method public unregisterCallback(Ljava/lang/String;)Z
    .registers 7
    .param p1, "svc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 124
    const-string v1, "BtCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback: service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    monitor-enter v1

    .line 126
    :try_start_1d
    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 127
    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BtCallback;->sendMessage(Ljava/lang/String;Z)V

    .line 133
    monitor-exit v1

    .line 135
    const/4 v0, 0x1

    :goto_30
    return v0

    .line 130
    :cond_31
    const-string v2, "BtCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback is not unregistered, svc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    monitor-exit v1

    goto :goto_30

    .line 133
    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_4b

    throw v0
.end method
