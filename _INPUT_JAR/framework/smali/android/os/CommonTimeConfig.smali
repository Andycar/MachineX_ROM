.class public Landroid/os/CommonTimeConfig;
.super Ljava/lang/Object;
.source "CommonTimeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CommonTimeConfig$OnServerDiedListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final INVALID_GROUP_ID:J = -0x1L

.field private static final METHOD_FORCE_NETWORKLESS_MASTER_MODE:I = 0x11

.field private static final METHOD_GET_AUTO_DISABLE:I = 0xf

.field private static final METHOD_GET_CLIENT_SYNC_INTERVAL:I = 0xb

.field private static final METHOD_GET_INTERFACE_BINDING:I = 0x7

.field private static final METHOD_GET_MASTER_ANNOUNCE_INTERVAL:I = 0x9

.field private static final METHOD_GET_MASTER_ELECTION_ENDPOINT:I = 0x3

.field private static final METHOD_GET_MASTER_ELECTION_GROUP_ID:I = 0x5

.field private static final METHOD_GET_MASTER_ELECTION_PRIORITY:I = 0x1

.field private static final METHOD_GET_PANIC_THRESHOLD:I = 0xd

.field private static final METHOD_SET_AUTO_DISABLE:I = 0x10

.field private static final METHOD_SET_CLIENT_SYNC_INTERVAL:I = 0xc

.field private static final METHOD_SET_INTERFACE_BINDING:I = 0x8

.field private static final METHOD_SET_MASTER_ANNOUNCE_INTERVAL:I = 0xa

.field private static final METHOD_SET_MASTER_ELECTION_ENDPOINT:I = 0x4

.field private static final METHOD_SET_MASTER_ELECTION_GROUP_ID:I = 0x6

.field private static final METHOD_SET_MASTER_ELECTION_PRIORITY:I = 0x2

.field private static final METHOD_SET_PANIC_THRESHOLD:I = 0xe

.field public static final SERVICE_NAME:Ljava/lang/String; = "common_time.config"

.field public static final SUCCESS:I


# instance fields
.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mInterfaceDesc:Ljava/lang/String;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRemote:Landroid/os/IBinder;

.field private mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mUtils:Landroid/os/CommonTimeUtils;


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    .line 415
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 417
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 418
    const-string v0, ""

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 421
    new-instance v0, Landroid/os/CommonTimeConfig$1;

    invoke-direct {v0, p0}, Landroid/os/CommonTimeConfig$1;-><init>(Landroid/os/CommonTimeConfig;)V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 65
    const-string v0, "common_time.config"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 66
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_2c

    .line 67
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 69
    :cond_2c
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/os/CommonTimeUtils;

    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 71
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/os/CommonTimeConfig;

    .prologue
    .line 30
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;
    .registers 2
    .param p0, "x0"    # Landroid/os/CommonTimeConfig;

    .prologue
    .line 30
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    return-object v0
.end method

.method private checkDeadServer()Z
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static create()Landroid/os/CommonTimeConfig;
    .registers 2

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Landroid/os/CommonTimeConfig;

    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 87
    .local v1, "retVal":Landroid/os/CommonTimeConfig;
    :goto_5
    return-object v1

    .line 83
    .end local v1    # "retVal":Landroid/os/CommonTimeConfig;
    :catch_6
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .restart local v1    # "retVal":Landroid/os/CommonTimeConfig;
    goto :goto_5
.end method

.method private throwOnDeadServer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 411
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 412
    :cond_c
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/os/CommonTimeConfig;->release()V

    return-void
.end method

.method public forceNetworklessMasterMode()I
    .registers 7

    .prologue
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 363
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_8
    iget-object v3, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 366
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_20
    .catchall {:try_start_8 .. :try_end_18} :catchall_29

    move-result v3

    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_1f
    return v3

    .line 368
    :catch_20
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1f

    .line 372
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAutoDisable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 321
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 322
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v1

    if-ne v0, v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getClientSyncInterval()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 266
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getInterfaceBinding()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 203
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/CommonTimeUtils;->transactGetString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "ifaceName":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    move-object v0, v1

    .line 208
    .end local v0    # "ifaceName":Ljava/lang/String;
    :cond_14
    return-object v0
.end method

.method public getMasterAnnounceInterval()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 239
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getMasterElectionEndpoint()Ljava/net/InetSocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 147
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMasterElectionGroupId()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 175
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x5

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMasterElectionPriority()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 120
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getPanicThreshold()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 294
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_f

    .line 102
    :try_start_5
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_d} :catch_12

    .line 105
    :goto_d
    iput-object v3, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 107
    :cond_f
    iput-object v3, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 108
    return-void

    .line 104
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public setAutoDisable(Z)I
    .registers 5
    .param p1, "autoDisable"    # Z

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 338
    const/4 v0, -0x7

    .line 340
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v2, 0x10

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v2, v0}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setClientSyncInterval(I)I
    .registers 4
    .param p1, "interval"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 279
    const/4 v0, -0x7

    .line 280
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_7
.end method

.method public setMasterAnnounceInterval(I)I
    .registers 4
    .param p1, "interval"    # I

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 252
    const/4 v0, -0x7

    .line 253
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_7
.end method

.method public setMasterElectionEndpoint(Ljava/net/InetSocketAddress;)I
    .registers 4
    .param p1, "ep"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    const/4 v0, -0x7

    .line 163
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetSockaddr(ILjava/net/InetSocketAddress;)I

    move-result v0

    goto :goto_7
.end method

.method public setMasterElectionGroupId(J)I
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    const/4 v0, -0x7

    .line 188
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/CommonTimeUtils;->transactSetLong(IJ)I

    move-result v0

    goto :goto_7
.end method

.method public setMasterElectionPriority(B)I
    .registers 4
    .param p1, "priority"    # B

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    const/4 v0, -0x7

    .line 134
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_7
.end method

.method public setNetworkBinding(Ljava/lang/String;)I
    .registers 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    const/4 v0, -0x7

    .line 225
    .end local p1    # "ifaceName":Ljava/lang/String;
    :goto_7
    return v0

    .restart local p1    # "ifaceName":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x8

    if-nez p1, :cond_10

    const-string p1, ""

    .end local p1    # "ifaceName":Ljava/lang/String;
    :cond_10
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetString(ILjava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public setPanicThreshold(I)I
    .registers 4
    .param p1, "threshold"    # I

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 309
    const/4 v0, -0x7

    .line 310
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_7
.end method

.method public setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .prologue
    .line 398
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_3
    iput-object p1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 400
    monitor-exit v1

    .line 401
    return-void

    .line 400
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
