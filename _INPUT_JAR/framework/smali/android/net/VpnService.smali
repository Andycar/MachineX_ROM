.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$1;,
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOXVPN_CONTAINER_ENABLED:I = 0x2

.field private static KNOXVPN_FEATURE:I = 0x0

.field private static final KNOXVPN_MDM_ENABLED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field private static final SYSTEM_VPN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VpnService"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    .line 141
    const/4 v0, -0x1

    sput v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 417
    return-void
.end method

.method static synthetic access$100(Ljava/net/InetAddress;I)V
    .registers 2
    .param p0, "x0"    # Ljava/net/InetAddress;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/IConnectivityManager;
    .registers 1

    .prologue
    .line 122
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .prologue
    .line 395
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_e
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_20

    .line 399
    if-ltz p1, :cond_18

    const/16 v0, 0x20

    if-le p1, v0, :cond_3a

    .line 400
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_20
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_32

    .line 403
    if-ltz p1, :cond_2a

    const/16 v0, 0x80

    if-le p1, v0, :cond_3a

    .line 404
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_3a
    return-void
.end method

.method private static getKnoxVpnFeature()I
    .registers 1

    .prologue
    .line 147
    const/4 v0, 0x2

    sput v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    .line 149
    sget v0, Landroid/net/VpnService;->KNOXVPN_FEATURE:I

    return v0
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .registers 1

    .prologue
    .line 158
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 186
    invoke-static {}, Landroid/net/VpnService;->getKnoxVpnFeature()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_52

    .line 189
    instance-of v7, p0, Lcom/sec/vpn/knox/GenericVpnContext;

    if-eqz v7, :cond_3e

    move-object v2, p0

    .line 191
    check-cast v2, Lcom/sec/vpn/knox/GenericVpnContext;

    .line 192
    .local v2, "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    invoke-virtual {v2}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "profile":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/vpn/knox/GenericVpnContext;->getVPNState()Z

    move-result v0

    .line 194
    .local v0, "isConnecting":Z
    invoke-virtual {v2}, Lcom/sec/vpn/knox/GenericVpnContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/vpn/knox/GenericVpnContext;->isMetaEnabled()Z

    move-result v1

    .line 196
    .local v1, "isMetaEnabled":Z
    const/4 v5, 0x0

    .line 198
    .local v5, "profileType":I
    :try_start_24
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-interface {v7, v3, v4, v0, v1}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 232
    .end local v0    # "isConnecting":Z
    .end local v1    # "isMetaEnabled":Z
    .end local v2    # "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profile":Ljava/lang/String;
    .end local v5    # "profileType":I
    :cond_2e
    :goto_2e
    return-object v6

    .line 202
    .restart local v0    # "isConnecting":Z
    .restart local v1    # "isMetaEnabled":Z
    .restart local v2    # "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profile":Ljava/lang/String;
    .restart local v5    # "profileType":I
    :cond_2f
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/net/IConnectivityManager;->knoxVpnProfileType(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_36} :catch_6a

    move-result v5

    .line 207
    :goto_37
    if-nez v5, :cond_2e

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v6

    goto :goto_2e

    .line 214
    .end local v0    # "isConnecting":Z
    .end local v1    # "isMetaEnabled":Z
    .end local v2    # "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profile":Ljava/lang/String;
    .end local v5    # "profileType":I
    :cond_3e
    :try_start_3e
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4a} :catch_68

    move-result v7

    if-nez v7, :cond_2e

    .line 221
    :goto_4d
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v6

    goto :goto_2e

    .line 226
    :cond_52
    :try_start_52
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5e} :catch_66

    move-result v7

    if-nez v7, :cond_2e

    .line 232
    :goto_61
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v6

    goto :goto_2e

    .line 229
    :catch_66
    move-exception v6

    goto :goto_61

    .line 218
    :catch_68
    move-exception v6

    goto :goto_4d

    .line 204
    .restart local v0    # "isConnecting":Z
    .restart local v1    # "isMetaEnabled":Z
    .restart local v2    # "knoxVPNContext":Lcom/sec/vpn/knox/GenericVpnContext;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profile":Ljava/lang/String;
    .restart local v5    # "profileType":I
    :catch_6a
    move-exception v7

    goto :goto_37
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 308
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 310
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    return v1

    .line 311
    :catch_10
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 356
    if-eqz p1, :cond_15

    const-string v0, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 357
    new-instance v0, Landroid/net/VpnService$Callback;

    invoke-direct {v0, p0, v1}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$1;)V

    .line 359
    :goto_14
    return-object v0

    :cond_15
    move-object v0, v1

    goto :goto_14
.end method

.method public onRevoke()V
    .registers 1

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    .line 375
    return-void
.end method

.method public protect(I)Z
    .registers 6
    .param p1, "socket"    # I

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 253
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 254
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v1

    .line 263
    :goto_18
    return v1

    .line 256
    :cond_19
    sget-boolean v1, Landroid/net/VpnService;->DBG:Z

    if-eqz v1, :cond_3a

    const-string v1, "VpnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protect is not going to be called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_3a
    const/4 v1, 0x1

    goto :goto_18

    .line 260
    :cond_3c
    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_41

    move-result v1

    goto :goto_18

    .line 262
    :catch_41
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 338
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 340
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    return v1

    .line 341
    :catch_10
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
