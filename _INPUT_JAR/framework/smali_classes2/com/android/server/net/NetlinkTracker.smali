.class public Lcom/android/server/net/NetlinkTracker;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetlinkTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetlinkTracker$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

.field private mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/net/NetlinkTracker$Callback;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkTracker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->TAG:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 88
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 89
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 91
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 104
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 98
    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 123
    const-string v1, "addressRemoved"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 125
    monitor-enter p0

    .line 126
    :try_start_e
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    .line 127
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1d

    .line 128
    if-eqz v0, :cond_1c

    .line 129
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 132
    .end local v0    # "changed":Z
    :cond_1c
    return-void

    .line 127
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 109
    const-string v1, "addressUpdated"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 111
    monitor-enter p0

    .line 112
    :try_start_e
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    .line 113
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1d

    .line 114
    if-eqz v0, :cond_1c

    .line 115
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 118
    .end local v0    # "changed":Z
    :cond_1c
    return-void

    .line 113
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public declared-synchronized clearLinkProperties()V
    .registers 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 188
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 190
    monitor-exit p0

    return-void

    .line 187
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 165
    const-string v1, "interfaceDnsServerInfo"

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/net/DnsServerRepository;->addServers(J[Ljava/lang/String;)Z

    move-result v0

    .line 167
    .local v0, "changed":Z
    if-eqz v0, :cond_27

    .line 168
    monitor-enter p0

    .line 169
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    iget-object v2, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Lcom/android/server/net/DnsServerRepository;->setDnsServersOn(Landroid/net/LinkProperties;)V

    .line 170
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_28

    .line 171
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 174
    .end local v0    # "changed":Z
    :cond_27
    return-void

    .line 170
    .restart local v0    # "changed":Z
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .registers 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 151
    const-string/jumbo v1, "routeRemoved"

    invoke-direct {p0, v1, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    monitor-enter p0

    .line 154
    :try_start_13
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    move-result v0

    .line 155
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 156
    if-eqz v0, :cond_21

    .line 157
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 160
    .end local v0    # "changed":Z
    :cond_21
    return-void

    .line 155
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .registers 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 137
    const-string/jumbo v1, "routeUpdated"

    invoke-direct {p0, v1, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_13
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    move-result v0

    .line 141
    .local v0, "changed":Z
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 142
    if-eqz v0, :cond_21

    .line 143
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 146
    .end local v0    # "changed":Z
    :cond_21
    return-void

    .line 141
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method
