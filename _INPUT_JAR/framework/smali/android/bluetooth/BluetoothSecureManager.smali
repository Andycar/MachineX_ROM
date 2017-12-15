.class public final Landroid/bluetooth/BluetoothSecureManager;
.super Ljava/lang/Object;
.source "BluetoothSecureManager.java"


# static fields
.field public static final SECURE_SETTING_A2DP_ENABLE:Ljava/lang/String; = "a2dp_enable"

.field public static final SECURE_SETTING_FTP_ENABLE:Ljava/lang/String; = "ftp_enable"

.field public static final SECURE_SETTING_GATT_ENABLE:Ljava/lang/String; = "gatt_enable"

.field public static final SECURE_SETTING_HDP_ENABLE:Ljava/lang/String; = "hdp_enable"

.field public static final SECURE_SETTING_HFP_ENABLE:Ljava/lang/String; = "hfp_enable"

.field public static final SECURE_SETTING_HID_ENABLE:Ljava/lang/String; = "hid_enable"

.field public static final SECURE_SETTING_MAP_ENABLE:Ljava/lang/String; = "map_enable"

.field public static final SECURE_SETTING_OPP_ENABLE:Ljava/lang/String; = "opp_enable"

.field public static final SECURE_SETTING_PAIRING_MODE:Ljava/lang/String; = "pairing_mode"

.field public static final SECURE_SETTING_PAN_ENABLE:Ljava/lang/String; = "pan_enable"

.field public static final SECURE_SETTING_PBAP_ENABLE:Ljava/lang/String; = "pbap_enable"

.field public static final SECURE_SETTING_SAP_ENABLE:Ljava/lang/String; = "sap_enable"

.field public static final SECURE_SETTING_SCAN_MODE:Ljava/lang/String; = "scan_mode"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManager"

.field private static This:Landroid/bluetooth/BluetoothSecureManager;


# instance fields
.field private mService:Landroid/bluetooth/IBluetoothSecureManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 267
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    .line 264
    return-void
.end method

.method public static getInstant()Landroid/bluetooth/BluetoothSecureManager;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v0, :cond_7

    .line 129
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    .line 135
    :goto_6
    return-object v0

    .line 131
    :cond_7
    const-class v1, Landroid/bluetooth/BluetoothSecureManager;

    monitor-enter v1

    .line 132
    :try_start_a
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v0, :cond_15

    .line 133
    new-instance v0, Landroid/bluetooth/BluetoothSecureManager;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSecureManager;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    .line 134
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 135
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    goto :goto_6

    .line 134
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 271
    :try_start_1
    const-string v5, "android.os.ServiceManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 273
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "BluetoothSecureManager"

    const-string v6, "calling getMethod for getService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v5, "getService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 276
    .local v3, "getService":Ljava/lang/reflect/Method;
    const-string v5, "BluetoothSecureManager"

    const-string v6, "calling getService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "bluetooth_secure_mode_manager"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 279
    .local v1, "binder":Landroid/os/IBinder;
    const-string v5, "BluetoothSecureManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getService return binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_4f

    move-result-object v4

    .line 283
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :goto_4e
    return-object v4

    .line 281
    :catch_4f
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothSecureManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load bt secure manager failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .param p3, "uuids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 203
    const/4 v0, 0x0

    .line 204
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothSecureManagerService;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public enableSecureMode(Z)Z
    .registers 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 144
    const/4 v0, 0x0

    .line 145
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableSecureMode(Z)Z

    move-result v0

    goto :goto_5
.end method

.method public enableWhiteList(Z)Z
    .registers 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 182
    const/4 v0, 0x0

    .line 183
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableWhiteList(Z)Z

    move-result v0

    goto :goto_5
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .registers 3
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 162
    const/4 v0, 0x0

    .line 163
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public getWhiteListCod(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 249
    const/4 v0, 0x0

    .line 250
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListCod(I)I

    move-result v0

    goto :goto_5
.end method

.method public getWhiteListFirstIndex()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 222
    const/4 v0, -0x1

    .line 223
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListFirstIndex()I

    move-result v0

    goto :goto_5
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 241
    const/4 v0, 0x0

    .line 242
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getWhiteListNextIndex(I)I
    .registers 3
    .param p1, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 232
    const/4 v0, -0x1

    .line 233
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListNextIndex(I)I

    move-result v0

    goto :goto_5
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 257
    const/4 v0, 0x0

    .line 258
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public isSecureModeEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 153
    const/4 v0, 0x0

    .line 154
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isSecureModeEnabled()Z

    move-result v0

    goto :goto_5
.end method

.method public isWhiteListEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 191
    const/4 v0, 0x0

    .line 192
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isWhiteListEnabled()Z

    move-result v0

    goto :goto_5
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 212
    const/4 v0, 0x0

    .line 213
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_5
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "valueName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x0

    .line 172
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_5
.end method
