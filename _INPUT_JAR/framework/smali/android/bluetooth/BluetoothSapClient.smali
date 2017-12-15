.class public final Landroid/bluetooth/BluetoothSapClient;
.super Ljava/lang/Object;
.source "BluetoothSapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "codeaurora.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothSapClient"

.field private static final VDBG:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mSapService:Landroid/bluetooth/IBluetoothSapClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v2, Landroid/bluetooth/BluetoothSapClient$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothSapClient$1;-><init>(Landroid/bluetooth/BluetoothSapClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 326
    new-instance v2, Landroid/bluetooth/BluetoothSapClient$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothSapClient$2;-><init>(Landroid/bluetooth/BluetoothSapClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mConnection:Landroid/content/ServiceConnection;

    .line 129
    iput-object p1, p0, Landroid/bluetooth/BluetoothSapClient;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Landroid/bluetooth/BluetoothSapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 132
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 133
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_28

    .line 135
    :try_start_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2c

    .line 140
    :cond_28
    :goto_28
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSapClient;->doBind()Z

    .line 141
    return-void

    .line 136
    :catch_2c
    move-exception v1

    .line 137
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothSapClient"

    const-string v3, "Unable to register BluetoothStateChangeCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothSapClient;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSapClient;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothSapClient;)Landroid/bluetooth/IBluetoothSapClient;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSapClient;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothSapClient;Landroid/bluetooth/IBluetoothSapClient;)Landroid/bluetooth/IBluetoothSapClient;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSapClient;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothSapClient;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothSapClient;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSapClient;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothSapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSapClient;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Landroid/bluetooth/BluetoothSapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    .line 347
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

    .line 351
    if-nez p1, :cond_4

    .line 354
    :cond_3
    :goto_3
    return v0

    .line 353
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
    .line 358
    const-string v0, "BluetoothSapClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method


# virtual methods
.method close()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 156
    const-string v2, "close()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 157
    iput-object v3, p0, Landroid/bluetooth/BluetoothSapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 158
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 159
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_15

    .line 161
    :try_start_10
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_28

    .line 167
    :cond_15
    :goto_15
    iget-object v3, p0, Landroid/bluetooth/BluetoothSapClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 168
    :try_start_18
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_3a

    if-eqz v2, :cond_26

    .line 170
    const/4 v2, 0x0

    :try_start_1d
    iput-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    .line 171
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothSapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_31
    .catchall {:try_start_1d .. :try_end_26} :catchall_3a

    .line 176
    :cond_26
    :goto_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3a

    .line 177
    return-void

    .line 162
    :catch_28
    move-exception v1

    .line 163
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothSapClient"

    const-string v3, "Unable to unregister BluetoothStateChangeCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 172
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_31
    move-exception v1

    .line 173
    .local v1, "re":Ljava/lang/Exception;
    :try_start_32
    const-string v2, "BluetoothSapClient"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 176
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 184
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

    invoke-static {v2}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 185
    const-string v2, "BluetoothSapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validation is enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is Valid Device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-eqz v2, :cond_82

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 189
    :try_start_58
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5f

    move-result v1

    .line 196
    :cond_5e
    :goto_5e
    return v1

    .line 190
    :catch_5f
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_82
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-nez v2, :cond_5e

    const-string v2, "BluetoothSapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 215
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

    invoke-static {v2}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-eqz v2, :cond_57

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 219
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    move-result v1

    .line 226
    :cond_33
    :goto_33
    return v1

    .line 220
    :catch_34
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_57
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-nez v2, :cond_33

    const-string v2, "BluetoothSapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectImmediate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-eqz v2, :cond_57

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 250
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSapClient;->disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    move-result v1

    .line 257
    :cond_33
    :goto_33
    return v1

    .line 251
    :catch_34
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_57
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-nez v2, :cond_33

    const-string v2, "BluetoothSapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method doBind()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothSapClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothSapClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 146
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    if-eqz v0, :cond_25

    iget-object v3, p0, Landroid/bluetooth/BluetoothSapClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothSapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 148
    :cond_25
    const-string v3, "BluetoothSapClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth SAP Client Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_3d
    return v2

    .line 151
    :cond_3e
    const-string v2, "BluetoothSapClient"

    const-string v3, "bindService called to Bluetooth SAP Client Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v2, 0x1

    goto :goto_3d
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSapClient;->close()V

    .line 181
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 5
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
    .line 264
    const-string v1, "getConnectedDevices()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-eqz v1, :cond_3e

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 267
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSapClient;->getConnectedDevices()Ljava/util/List;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result-object v1

    .line 274
    :goto_15
    return-object v1

    .line 268
    :catch_16
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSapClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3e
    iget-object v1, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-nez v1, :cond_49

    const-string v1, "BluetoothSapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-eqz v2, :cond_57

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 302
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    move-result v1

    .line 309
    :cond_33
    :goto_33
    return v1

    .line 303
    :catch_34
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_57
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-nez v2, :cond_33

    const-string v2, "BluetoothSapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 6
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
    .line 281
    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-eqz v1, :cond_3e

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 284
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result-object v1

    .line 291
    :goto_15
    return-object v1

    .line 285
    :catch_16
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSapClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3e
    iget-object v1, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-nez v1, :cond_49

    const-string v1, "BluetoothSapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15
.end method

.method public testApi([BI)Z
    .registers 8
    .param p1, "testdata"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 313
    const-string/jumbo v2, "testApi"

    invoke-static {v2}, Landroid/bluetooth/BluetoothSapClient;->log(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-eqz v2, :cond_3b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 316
    :try_start_11
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothSapClient;->testApi([BI)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    .line 323
    :cond_17
    :goto_17
    return v1

    .line 317
    :catch_18
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3b
    iget-object v2, p0, Landroid/bluetooth/BluetoothSapClient;->mSapService:Landroid/bluetooth/IBluetoothSapClient;

    if-nez v2, :cond_17

    const-string v2, "BluetoothSapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
