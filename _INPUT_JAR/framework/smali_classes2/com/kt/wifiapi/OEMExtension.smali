.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field private static final BLE_STR:Ljava/lang/String; = "ble="

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final DBG:Z

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final END_STR:Ljava/lang/String; = "####"

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final TAG:Ljava/lang/String; = "OEMExtension"

.field private static final VSI_STR:Ljava/lang/String; = "vsi="

.field public static final WIFI_SKIP_AUTO_CONNECTION:Ljava/lang/String; = "wifi_skip_auto_conn"

.field private static instance:Lcom/kt/wifiapi/OEMExtension;

.field private static mContext:Landroid/content/Context;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    .line 61
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sput-object p1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    .line 67
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    .line 69
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v0, :cond_1e

    const-string v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEMExtension::getInstance() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1e
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_29

    .line 73
    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0, p0}, Lcom/kt/wifiapi/OEMExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    .line 75
    :cond_29
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 158
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_connection_monitor_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_12

    .line 177
    :goto_11
    return v0

    .line 161
    :cond_12
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_connection_monitor_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "ret":I
    packed-switch v0, :pswitch_data_42

    .line 173
    const/4 v0, 0x2

    .line 176
    :goto_23
    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisconnectionPriority() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 164
    :pswitch_3c
    const/4 v0, 0x2

    .line 165
    goto :goto_23

    .line 167
    :pswitch_3e
    const/4 v0, 0x1

    .line 168
    goto :goto_23

    .line 170
    :pswitch_40
    const/4 v0, 0x3

    .line 171
    goto :goto_23

    .line 162
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3e
        :pswitch_40
    .end packed-switch
.end method

.method public getFeature()I
    .registers 2

    .prologue
    .line 80
    const/16 v0, 0x3f

    .line 87
    .local v0, "ret":I
    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const-string v1, "OEMExtension"

    const-string v2, "getGWSScanResultsEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 185
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 187
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/wifiapi/OEMExtension;->setScanResultsEx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getInternetCheckOption(I)I
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 303
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 304
    .local v0, "msg":Landroid/os/Message;
    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_27

    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_27
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 307
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 309
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public getManualConnection()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_skip_auto_conn"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2e

    .line 112
    .local v0, "ret":Z
    :goto_11
    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_2d

    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getManualConnection() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2d
    return v0

    .end local v0    # "ret":Z
    :cond_2e
    move v0, v1

    .line 111
    goto :goto_11
.end method

.method public setDisconnectionPriority(I)Z
    .registers 9
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 122
    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisconnectionPriority() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, "position":I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.DISCONNECT_WEAK_WIFI_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_connection_monitor_enable"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_49

    .line 128
    const-string/jumbo v3, "service"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    sget-object v3, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    sget-object v3, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_connection_monitor_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    :cond_49
    packed-switch p1, :pswitch_data_7a

    .line 151
    const/4 v1, 0x0

    .line 154
    :goto_4d
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_connection_monitor_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    :goto_5a
    return v2

    .line 136
    :pswitch_5b
    const-string/jumbo v3, "service"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    sget-object v3, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    sget-object v3, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_connection_monitor_enable"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5a

    .line 142
    :pswitch_73
    const/4 v1, 0x1

    .line 143
    goto :goto_4d

    .line 145
    :pswitch_75
    const/4 v1, 0x0

    .line 146
    goto :goto_4d

    .line 148
    :pswitch_77
    const/4 v1, 0x2

    .line 149
    goto :goto_4d

    .line 134
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_73
        :pswitch_75
        :pswitch_77
    .end packed-switch
.end method

.method public setInternetCheckOption(II)I
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 292
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 293
    .local v0, "msg":Landroid/os/Message;
    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_32

    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_32
    const/16 v1, 0x23

    iput v1, v0, Landroid/os/Message;->what:I

    .line 296
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 297
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 299
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public setManualConnection(Z)Z
    .registers 9
    .param p1, "value"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 93
    .local v1, "msg":Landroid/os/Message;
    sget-boolean v2, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v2, :cond_24

    const-string v2, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setManualConnection() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_24
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    if-eqz p1, :cond_4c

    move v2, v3

    :goto_30
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    const/16 v2, 0x20

    iput v2, v1, Landroid/os/Message;->what:I

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_4e

    .line 106
    :goto_4b
    return v3

    .end local v0    # "args":Landroid/os/Bundle;
    :cond_4c
    move v2, v4

    .line 95
    goto :goto_30

    .line 105
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_4e
    sget-boolean v2, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v2, :cond_59

    const-string v2, "OEMExtension"

    const-string v3, "Settings.System.putInt() fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    move v3, v4

    .line 106
    goto :goto_4b
.end method

.method public setScanResultsEx(Ljava/lang/String;)Ljava/util/List;
    .registers 30
    .param p1, "scanResults"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p1, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 203
    :cond_8
    const/16 v17, 0x0

    .line 288
    :cond_a
    return-object v17

    .line 206
    :cond_b
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v17, "gwsScanList":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    const-string v25, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 209
    .local v22, "lines":[Ljava/lang/String;
    const-string v5, ""

    .line 210
    .local v5, "bssid":Ljava/lang/String;
    const/16 v24, 0x0

    .line 211
    .local v24, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v7, 0x0

    .line 212
    .local v7, "level":I
    const/4 v8, 0x0

    .line 213
    .local v8, "freq":I
    const-string v6, ""

    .line 214
    .local v6, "flags":Ljava/lang/String;
    const-string v9, "null"

    .line 215
    .local v9, "BSSLoadElement":Ljava/lang/String;
    const-string v10, "null"

    .line 216
    .local v10, "vendorSpecificOUI":Ljava/lang/String;
    const-string v11, "null"

    .line 218
    .local v11, "vendorSpecificContents":Ljava/lang/String;
    const-string v25, "bssid="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v14

    .line 219
    .local v14, "bssidStrLen":I
    const-string v25, "flags="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v16

    .line 220
    .local v16, "flagLen":I
    const-string v25, "ble="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v13

    .line 221
    .local v13, "bleLen":I
    const-string/jumbo v25, "vsi="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v23

    .line 223
    .local v23, "vsiLen":I
    move-object/from16 v12, v22

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_48
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    aget-object v21, v12, v18

    .line 224
    .local v21, "line":Ljava/lang/String;
    const-string v25, "bssid="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_72

    .line 225
    new-instance v5, Ljava/lang/String;

    .end local v5    # "bssid":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v14

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v5, v0, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .line 223
    .restart local v5    # "bssid":Ljava/lang/String;
    :cond_6f
    :goto_6f
    add-int/lit8 v18, v18, 0x1

    goto :goto_48

    .line 226
    :cond_72
    const-string v25, "freq="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_94

    .line 228
    :try_start_7e
    const-string v25, "freq="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_8f} :catch_91

    move-result v8

    goto :goto_6f

    .line 229
    :catch_91
    move-exception v15

    .line 230
    .local v15, "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    .line 231
    goto :goto_6f

    .line 232
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_94
    const-string v25, "level="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_ba

    .line 234
    :try_start_a0
    const-string v25, "level="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_b1} :catch_b7

    move-result v7

    .line 238
    if-lez v7, :cond_6f

    add-int/lit16 v7, v7, -0x100

    goto :goto_6f

    .line 239
    :catch_b7
    move-exception v15

    .line 240
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 241
    goto :goto_6f

    .line 242
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_ba
    const-string v25, "flags="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_dc

    .line 243
    new-instance v6, Ljava/lang/String;

    .end local v6    # "flags":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v16

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v6, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v6    # "flags":Ljava/lang/String;
    goto :goto_6f

    .line 244
    :cond_dc
    const-string/jumbo v25, "ssid="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_fe

    .line 245
    const-string/jumbo v25, "ssid="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v24

    goto/16 :goto_6f

    .line 246
    :cond_fe
    const-string v25, "ble="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_11f

    .line 247
    new-instance v9, Ljava/lang/String;

    .end local v9    # "BSSLoadElement":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v13

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v9, v0, v13, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v9    # "BSSLoadElement":Ljava/lang/String;
    goto/16 :goto_6f

    .line 248
    :cond_11f
    const-string/jumbo v25, "vsi="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_158

    .line 249
    new-instance v10, Ljava/lang/String;

    .end local v10    # "vendorSpecificOUI":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    const/16 v26, 0x6

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-direct {v10, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 250
    .restart local v10    # "vendorSpecificOUI":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11    # "vendorSpecificContents":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    add-int/lit8 v26, v23, 0x6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v27, v27, v23

    add-int/lit8 v27, v27, -0x6

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v11    # "vendorSpecificContents":Ljava/lang/String;
    goto/16 :goto_6f

    .line 251
    :cond_158
    const-string v25, "===="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_170

    const-string v25, "####"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6f

    .line 252
    :cond_170
    if-eqz v5, :cond_1ba

    .line 253
    if-eqz v24, :cond_1c9

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "ssid":Ljava/lang/String;
    :goto_178
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 255
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kt/wifiapi/GWSScanResult;

    .line 256
    .local v3, "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v3, :cond_1cf

    .line 257
    iput v7, v3, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 259
    if-eqz v24, :cond_1cc

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v25

    :goto_1a7
    move-object/from16 v0, v25

    iput-object v0, v3, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 260
    iput-object v6, v3, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 261
    iput v8, v3, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 262
    iput-object v9, v3, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 263
    iput-object v10, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 264
    iput-object v11, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 265
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    :cond_1ba
    :goto_1ba
    const/4 v5, 0x0

    .line 275
    const/4 v7, 0x0

    .line 276
    const/4 v8, 0x0

    .line 277
    const-string v6, ""

    .line 278
    const/16 v24, 0x0

    .line 279
    const-string v9, "null"

    .line 280
    const-string v10, "null"

    .line 281
    const-string v11, "null"

    goto/16 :goto_6f

    .line 253
    :cond_1c9
    const-string v4, "<unknown ssid>"

    goto :goto_178

    .line 259
    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v4    # "ssid":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    :cond_1cc
    const-string v25, "<unknown ssid>"

    goto :goto_1a7

    .line 267
    :cond_1cf
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1ba

    .line 268
    new-instance v3, Lcom/kt/wifiapi/GWSScanResult;

    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    invoke-direct/range {v3 .. v11}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ba
.end method
