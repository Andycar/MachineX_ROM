.class public Lcom/android/server/display/WfdBridgeServer;
.super Lcom/android/server/display/WfdBridgeBase;
.source "WfdBridgeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WfdBridgeServer"


# instance fields
.field private mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/WfdBridgeBase$BridgePeer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "listner"    # Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/android/server/display/WfdBridgeBase;-><init>(Lcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 38
    const-string v0, "WfdBridgeServer"

    const-string v1, "Created WFDBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput p1, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private getIndexFromDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .registers 5
    .param p1, "dst"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 236
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 237
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 244
    .end local v0    # "i":I
    :goto_3b
    return v0

    .line 235
    .restart local v0    # "i":I
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3b
.end method


# virtual methods
.method public connect()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WfdBridgeServer;->mSession:Z

    .line 48
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->start()V

    .line 51
    return-void
.end method

.method public disconnect()V
    .registers 5

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->destroy()V

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 140
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->closeSocket()V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 144
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    .line 147
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 148
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_30

    .line 153
    :goto_2c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/WfdBridgeServer;->mSession:Z

    .line 154
    return-void

    .line 149
    :catch_30
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WfdBridgeServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public getAddr()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_b

    .line 128
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 131
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getConnectAddrList()[Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeServer;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8

    .line 115
    const/4 v0, 0x0

    .line 122
    :cond_7
    return-object v0

    .line 118
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/net/InetAddress;

    .line 119
    .local v0, "addrlist":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 120
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 56
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 57
    const/4 v1, 0x1

    .line 61
    :goto_18
    return v1

    .line 55
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public request(Landroid/net/wifi/p2p/WifiP2pDevice;II)V
    .registers 13
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "dev"    # I
    .param p3, "type"    # I

    .prologue
    .line 66
    const-string v3, ""

    .line 70
    .local v3, "reqMsg":Ljava/lang/String;
    packed-switch p3, :pswitch_data_70

    .line 84
    :goto_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_51

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Sink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    :cond_23
    :goto_23
    const/4 v7, 0x0

    .line 91
    .local v7, "index":I
    if-eqz p1, :cond_2a

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeServer;->getIndexFromDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v7

    .line 98
    :cond_2a
    iget-object v8, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3e8

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v8, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 99
    return-void

    .line 72
    .end local v7    # "index":I
    :pswitch_42
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "RVF"

    .line 73
    goto :goto_5

    .line 76
    :pswitch_47
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "MirrorMouse"

    .line 77
    goto :goto_5

    .line 80
    :pswitch_4c
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "ScreenMirroring"

    goto :goto_5

    .line 86
    :cond_51
    const/4 v0, 0x2

    if-ne p2, v0, :cond_23

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 70
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_42
        :pswitch_47
        :pswitch_4c
    .end packed-switch
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 202
    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 205
    :try_start_3
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 206
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 207
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 209
    :goto_1c
    iget-boolean v3, p0, Lcom/android/server/display/WfdBridgeServer;->mSession:Z

    if-eqz v3, :cond_87

    .line 210
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 211
    .local v2, "socket":Ljava/net/Socket;
    const-string v3, "WfdBridgeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run() new client IpAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastUpdatedClient = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;-><init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V

    .line 213
    .local v0, "bp":Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    if-eqz v0, :cond_8f

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    if-eqz v3, :cond_8f

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8f

    .line 214
    new-instance v3, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;-><init>(Lcom/android/server/display/WfdBridgeBase;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 215
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 216
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I

    .line 217
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_77
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v3}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onBridgeConnected()I
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7c} :catch_7d

    goto :goto_1c

    .line 225
    .end local v0    # "bp":Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    .end local v2    # "socket":Ljava/net/Socket;
    :catch_7d
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "WfdBridgeServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :cond_87
    const-string v3, "WfdBridgeServer"

    const-string v4, "End of WfdBridgeServer"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 219
    .restart local v0    # "bp":Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    .restart local v2    # "socket":Ljava/net/Socket;
    :cond_8f
    :try_start_8f
    const-string v3, "WfdBridgeServer"

    const-string v4, "Exceptional case!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_96} :catch_7d

    goto :goto_77
.end method

.method public sendBusyflag(I)V
    .registers 11
    .param p1, "flag"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeServer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 104
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3e

    .line 105
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v0, v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v0, :cond_3b

    .line 106
    iget-object v8, p0, Lcom/android/server/display/WfdBridgeServer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v8, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 104
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 110
    .end local v7    # "i":I
    :cond_3e
    return-void
.end method

.method public sendMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .registers 7
    .param p1, "msg"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    const-string v2, "WfdBridgeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_34

    .line 161
    :cond_2b
    const-string v0, "WfdBridgeServer"

    const-string v2, "Client is not connected"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 171
    :goto_33
    return v0

    .line 165
    :cond_34
    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v2, :cond_44

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v2, :cond_4d

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 166
    :cond_44
    const-string v0, "WfdBridgeServer"

    const-string v2, "Client is not found"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 167
    goto :goto_33

    .line 170
    :cond_4d
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    goto :goto_33
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 7
    .param p1, "client"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v4, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 180
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_50

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 182
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 185
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->closeSocket()V

    .line 186
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    iput-object v4, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 198
    .end local v0    # "i":I
    :cond_50
    :goto_50
    return-void

    .line 189
    .restart local v0    # "i":I
    :cond_51
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 190
    :cond_7b
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v2, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;-><init>(Lcom/android/server/display/WfdBridgeBase;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v2, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 193
    iput-object v4, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_50

    .line 181
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
