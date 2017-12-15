.class public Landroid/net/wifi/MsapWifiManager;
.super Ljava/lang/Object;
.source "MsapWifiManager.java"


# static fields
.field public static Debug:Z = false

.field public static final EXTRA_ADDED_BSSID:Ljava/lang/String; = "addBssid"

.field public static final EXTRA_ADDED_HASH:Ljava/lang/String; = "addVenueHash"

.field public static final EXTRA_ADDED_NAME:Ljava/lang/String; = "addVenueName"

.field public static final EXTRA_ADDED_SERVERID:Ljava/lang/String; = "addServerId"

.field public static final EXTRA_ADDED_SSID:Ljava/lang/String; = "addSsid"

.field public static final EXTRA_DELETED_HASH:Ljava/lang/String; = "deleteVenueHash"

.field public static final EXTRA_DELETED_SERVERID:Ljava/lang/String; = "deleteServerId"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "erroInfo"

.field public static final EXTRA_POSTASSOC_MODE:Ljava/lang/String; = "post.association.mode"

.field public static final EXTRA_RSP_HASH:Ljava/lang/String; = "responseHash"

.field public static final EXTRA_RSP_LEN:Ljava/lang/String; = "payloadLen"

.field public static final EXTRA_RSP_SERVERID:Ljava/lang/String; = "responseId"

.field public static final GAS_RSP_ACTION:Ljava/lang/String; = "android.net.wifi.msap.GAS_RSP"

.field public static final PARSE_ERROR:I = 0x0

.field public static final PARSE_NOERROR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SamsungMSAP.MsapWifiManager"

.field public static final TIMEOUT_ERROR:I = 0x2

.field public static final VENUE_SERVER_ADDED_ACTION:Ljava/lang/String; = "android.net.wifi.msap.VENUE_SERVER_ADDED"

.field public static final VENUE_SERVER_DELETED_ACTION:Ljava/lang/String; = "android.net.wifi.msap.VENUE_SERVER_DELETED"


# instance fields
.field mMsapService:Landroid/net/wifi/IMsapWifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/MsapWifiManager;->Debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IMsapWifiManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msapservice"    # Landroid/net/wifi/IMsapWifiManager;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    .line 124
    return-void
.end method


# virtual methods
.method public MsapWifiManagerStart()V
    .registers 4

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_a

    .line 135
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IMsapWifiManager;->startWifiManager()V

    .line 142
    :goto_9
    return-void

    .line 137
    :cond_a
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "MsapWifiManagerStart - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_9

    .line 139
    :catch_12
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "MsapWifiManager : Exception while starting MSAP  Wifi Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public gasReq(IILjava/lang/String;)Z
    .registers 8
    .param p1, "venueHash"    # I
    .param p2, "serverId"    # I
    .param p3, "payload"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 206
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_c

    .line 207
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/net/wifi/IMsapWifiManager;->gasReq(IILjava/lang/String;)Z

    move-result v1

    .line 217
    :goto_b
    return v1

    .line 209
    :cond_c
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "gasReq - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_1d

    goto :goto_b

    .line 212
    :catch_14
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while gasReq"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 215
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while gasReq"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getBss(Ljava/lang/String;)Landroid/net/wifi/MsapBssInfo;
    .registers 6
    .param p1, "bssId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 256
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_c

    .line 257
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/IMsapWifiManager;->getBss(Ljava/lang/String;)Landroid/net/wifi/MsapBssInfo;

    move-result-object v1

    .line 267
    :goto_b
    return-object v1

    .line 259
    :cond_c
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "getBss - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_1d

    goto :goto_b

    .line 262
    :catch_14
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while getBss"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 265
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while getBss"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getGasResponse()[B
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 279
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_c

    .line 280
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IMsapWifiManager;->getGasResponse()[B

    move-result-object v1

    .line 290
    :goto_b
    return-object v1

    .line 282
    :cond_c
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "getGasResponse - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_1d

    goto :goto_b

    .line 285
    :catch_14
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while getGasResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 288
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while getGasResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public notifyGasResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_a

    .line 189
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IMsapWifiManager;->notifyGasResponse(Ljava/lang/String;)V

    .line 196
    :goto_9
    return-void

    .line 191
    :cond_a
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string/jumbo v2, "notifyGasResponse - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_9

    .line 193
    :catch_13
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "Exception while notify GasResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public notifyVenueServerAdded(Ljava/lang/String;)V
    .registers 5
    .param p1, "venueInfo"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_a

    .line 153
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IMsapWifiManager;->notifyVenueServerAdded(Ljava/lang/String;)V

    .line 160
    :goto_9
    return-void

    .line 155
    :cond_a
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string/jumbo v2, "notifyVenueServerAdded - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_9

    .line 157
    :catch_13
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "Exception while notify VenueServerAdded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public notifyVenueServerDeleted(Ljava/lang/String;)V
    .registers 5
    .param p1, "venueInfo"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_a

    .line 171
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IMsapWifiManager;->notifyVenueServerDeleted(Ljava/lang/String;)V

    .line 178
    :goto_9
    return-void

    .line 173
    :cond_a
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string/jumbo v2, "notifyVenueServerDeleted - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_9

    .line 175
    :catch_13
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "Exception while notify VenueServerDeleted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public resetMsap()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 229
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v2, :cond_c

    .line 230
    iget-object v2, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IMsapWifiManager;->resetMsap()I

    move-result v1

    .line 240
    :goto_b
    return v1

    .line 232
    :cond_c
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string/jumbo v3, "resetMsap - mMsapService is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_1e

    goto :goto_b

    .line 235
    :catch_15
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "NullPointerException while resetMsap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 238
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1e
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungMSAP.MsapWifiManager"

    const-string v3, "RemoteException while resetMsap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public sendVenueAddedCacheInfo()V
    .registers 4

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_a

    .line 304
    iget-object v1, p0, Landroid/net/wifi/MsapWifiManager;->mMsapService:Landroid/net/wifi/IMsapWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IMsapWifiManager;->sendVenueAddedCacheInfo()V

    .line 311
    :goto_9
    return-void

    .line 306
    :cond_a
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string/jumbo v2, "sendVenueAddedCacheInfo - mMsapService is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_9

    .line 308
    :catch_13
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungMSAP.MsapWifiManager"

    const-string v2, "RemoteException while sendVenueAddedCacheInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
