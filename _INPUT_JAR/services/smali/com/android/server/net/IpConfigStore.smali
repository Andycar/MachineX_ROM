.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/IpConfigStore$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x2

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/IpConfigStore;Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/net/IpConfigStore;
    .param p1, "x1"    # Ljava/io/DataOutputStream;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z

    move-result v0

    return v0
.end method

.method private writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .registers 15
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "configKey"    # I
    .param p3, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v8, 0x0

    .line 77
    .local v8, "written":Z
    :try_start_1
    sget-object v9, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v10, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_142

    .line 111
    const-string v9, "Ignore invalid ip assignment while writing"

    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 115
    :goto_13
    :pswitch_13
    sget-object v9, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    iget-object v10, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_14c

    .line 148
    const-string v9, "Ignore invalid proxy settings while writing"

    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 152
    :goto_25
    :pswitch_25
    if-eqz v8, :cond_2f

    .line 153
    const-string v9, "id"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2f} :catch_9d

    .line 159
    :cond_2f
    :goto_2f
    const-string v9, "eos"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    return v8

    .line 79
    :pswitch_35
    :try_start_35
    const-string v9, "ipAssignment"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 80
    iget-object v9, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    iget-object v7, p3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 82
    .local v7, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v7, :cond_ba

    .line 83
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_64

    .line 84
    iget-object v4, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 85
    .local v4, "ipAddress":Landroid/net/LinkAddress;
    const-string v9, "linkAddress"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    .end local v4    # "ipAddress":Landroid/net/LinkAddress;
    :cond_64
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v9, :cond_7e

    .line 90
    const-string v9, "gateway"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 95
    :cond_7e
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 96
    .local v3, "inetAddr":Ljava/net/InetAddress;
    const-string v9, "dns"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_9c} :catch_9d

    goto :goto_84

    .line 156
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_9d
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure in writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 100
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_ba
    const/4 v8, 0x1

    .line 101
    goto/16 :goto_13

    .line 103
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :pswitch_bd
    :try_start_bd
    const-string v9, "ipAssignment"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    iget-object v9, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    const/4 v8, 0x1

    .line 106
    goto/16 :goto_13

    .line 117
    :pswitch_ce
    iget-object v6, p3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 118
    .local v6, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "exclusionList":Ljava/lang/String;
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 120
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v9, "proxyHost"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v9, "proxyPort"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPort()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 125
    if-eqz v1, :cond_107

    .line 126
    const-string v9, "exclusionList"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 129
    :cond_107
    const/4 v8, 0x1

    .line 130
    goto/16 :goto_25

    .line 132
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v6    # "proxyProperties":Landroid/net/ProxyInfo;
    :pswitch_10a
    iget-object v5, p3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 133
    .local v5, "proxyPacProperties":Landroid/net/ProxyInfo;
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 134
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v9, "proxyPac"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 137
    const/4 v8, 0x1

    .line 138
    goto/16 :goto_25

    .line 140
    .end local v5    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_12f
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 141
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/lang/NullPointerException; {:try_start_bd .. :try_end_13e} :catch_9d

    .line 142
    const/4 v8, 0x1

    .line 143
    goto/16 :goto_25

    .line 77
    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_35
        :pswitch_bd
        :pswitch_13
    .end packed-switch

    .line 115
    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_10a
        :pswitch_12f
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "IpConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "IpConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 27
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 179
    .local v13, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v8, 0x0

    .line 181
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v23, Ljava/io/BufferedInputStream;

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v23 .. v24}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_1b} :catch_331
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_32e
    .catchall {:try_start_6 .. :try_end_1b} :catchall_32b

    .line 183
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v9, "in":Ljava/io/DataInputStream;
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 184
    .local v22, "version":I
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_51

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_51

    .line 185
    const-string v23, "Bad version on IP configuration file, ignore read"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_38} :catch_dc
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_38} :catch_106
    .catchall {:try_start_1b .. :try_end_38} :catchall_158

    .line 186
    const/4 v13, 0x0

    .line 322
    .end local v13    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v9, :cond_3e

    .line 324
    :try_start_3b
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_325

    :cond_3e
    :goto_3e
    move-object v8, v9

    .line 329
    .end local v9    # "in":Ljava/io/DataInputStream;
    .end local v22    # "version":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :cond_3f
    :goto_3f
    return-object v13

    .line 292
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v2, "config":Landroid/net/IpConfiguration;
    .local v5, "exclusionList":Ljava/lang/String;
    .local v7, "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v11, "key":Ljava/lang/String;
    .restart local v13    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    .local v14, "pacFileUrl":Ljava/lang/String;
    .local v15, "proxyHost":Ljava/lang/String;
    .local v18, "proxyPort":I
    .local v19, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v21, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v22    # "version":I
    :pswitch_40
    :try_start_40
    new-instance v16, Landroid/net/ProxyInfo;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v15, v1, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    .local v16, "proxyInfo":Landroid/net/ProxyInfo;
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 295
    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 190
    .end local v2    # "config":Landroid/net/IpConfiguration;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v16    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v18    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_51
    :goto_51
    const/4 v7, -0x1

    .line 192
    .restart local v7    # "id":I
    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 193
    .restart local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v19, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 194
    .restart local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v21, Landroid/net/StaticIpConfiguration;

    invoke-direct/range {v21 .. v21}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 195
    .restart local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/4 v15, 0x0

    .line 196
    .restart local v15    # "proxyHost":Ljava/lang/String;
    const/4 v14, 0x0

    .line 197
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    const/16 v18, -0x1

    .line 198
    .restart local v18    # "proxyPort":I
    const/4 v5, 0x0

    .line 202
    .restart local v5    # "exclusionList":Ljava/lang/String;
    :goto_60
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_63
    .catch Ljava/io/EOFException; {:try_start_40 .. :try_end_63} :catch_dc
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_63} :catch_106
    .catchall {:try_start_40 .. :try_end_63} :catchall_158

    move-result-object v11

    .line 204
    .restart local v11    # "key":Ljava/lang/String;
    :try_start_64
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_73

    .line 205
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    goto :goto_60

    .line 206
    :cond_73
    const-string v23, "ipAssignment"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_86

    .line 207
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v10

    goto :goto_60

    .line 208
    :cond_86
    const-string v23, "linkAddress"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12e

    .line 209
    new-instance v12, Landroid/net/LinkAddress;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 211
    .local v12, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_e8

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v23, v0

    if-nez v23, :cond_e8

    .line 213
    move-object/from16 v0, v21

    iput-object v12, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_bd} :catch_be
    .catch Ljava/io/EOFException; {:try_start_64 .. :try_end_bd} :catch_dc
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_bd} :catch_106
    .catchall {:try_start_64 .. :try_end_bd} :catchall_158

    goto :goto_60

    .line 263
    .end local v12    # "linkAddr":Landroid/net/LinkAddress;
    :catch_be
    move-exception v4

    .line 264
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_bf
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignore invalid address while reading"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/io/EOFException; {:try_start_bf .. :try_end_db} :catch_dc
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_db} :catch_106
    .catchall {:try_start_bf .. :try_end_db} :catchall_158

    goto :goto_60

    .line 318
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v18    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v22    # "version":I
    :catch_dc
    move-exception v23

    move-object v8, v9

    .line 322
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_de
    if-eqz v8, :cond_3f

    .line 324
    :try_start_e0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e5

    goto/16 :goto_3f

    .line 325
    :catch_e5
    move-exception v23

    goto/16 :goto_3f

    .line 215
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "linkAddr":Landroid/net/LinkAddress;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v18    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v22    # "version":I
    :cond_e8
    :try_start_e8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Non-IPv4 or duplicate address: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e8 .. :try_end_104} :catch_be
    .catch Ljava/io/EOFException; {:try_start_e8 .. :try_end_104} :catch_dc
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_104} :catch_106
    .catchall {:try_start_e8 .. :try_end_104} :catchall_158

    goto/16 :goto_60

    .line 319
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "linkAddr":Landroid/net/LinkAddress;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v18    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v22    # "version":I
    :catch_106
    move-exception v4

    move-object v8, v9

    .line 320
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_108
    :try_start_108
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error parsing configuration: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_124
    .catchall {:try_start_108 .. :try_end_124} :catchall_32b

    .line 322
    if-eqz v8, :cond_3f

    .line 324
    :try_start_126
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_12b

    goto/16 :goto_3f

    .line 325
    :catch_12b
    move-exception v23

    goto/16 :goto_3f

    .line 217
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v18    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v22    # "version":I
    :cond_12e
    :try_start_12e
    const-string v23, "gateway"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f0

    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, "dest":Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 220
    .local v6, "gateway":Ljava/net/InetAddress;
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_180

    .line 222
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 223
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    if-nez v23, :cond_160

    .line 224
    move-object/from16 v0, v21

    iput-object v6, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_156
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12e .. :try_end_156} :catch_be
    .catch Ljava/io/EOFException; {:try_start_12e .. :try_end_156} :catch_dc
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_156} :catch_106
    .catchall {:try_start_12e .. :try_end_156} :catchall_158

    goto/16 :goto_60

    .line 322
    .end local v3    # "dest":Landroid/net/LinkAddress;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v18    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v22    # "version":I
    :catchall_158
    move-exception v23

    move-object v8, v9

    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_15a
    if-eqz v8, :cond_15f

    .line 324
    :try_start_15c
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_328

    .line 325
    :cond_15f
    :goto_15f
    throw v23

    .line 226
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "dest":Landroid/net/LinkAddress;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v6    # "gateway":Ljava/net/InetAddress;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v18    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v22    # "version":I
    :cond_160
    :try_start_160
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Duplicate gateway: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_60

    .line 229
    :cond_180
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a1

    .line 230
    new-instance v3, Landroid/net/LinkAddress;

    .end local v3    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 234
    .restart local v3    # "dest":Landroid/net/LinkAddress;
    :cond_1a1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b5

    .line 235
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 237
    :cond_1b5
    new-instance v20, Landroid/net/RouteInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 238
    .local v20, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v23

    if-eqz v23, :cond_1d0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    if-nez v23, :cond_1d0

    .line 240
    move-object/from16 v0, v21

    iput-object v6, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto/16 :goto_60

    .line 242
    :cond_1d0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Non-IPv4 default or duplicate route: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_60

    .line 245
    .end local v3    # "dest":Landroid/net/LinkAddress;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    .end local v20    # "route":Landroid/net/RouteInfo;
    :cond_1f0
    const-string v23, "dns"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20d

    .line 246
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    .line 248
    :cond_20d
    const-string/jumbo v23, "proxySettings"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_222

    .line 249
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v19

    goto/16 :goto_60

    .line 250
    :cond_222
    const-string/jumbo v23, "proxyHost"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_233

    .line 251
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_60

    .line 252
    :cond_233
    const-string/jumbo v23, "proxyPort"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_244

    .line 253
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    goto/16 :goto_60

    .line 254
    :cond_244
    const-string/jumbo v23, "proxyPac"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_255

    .line 255
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_60

    .line 256
    :cond_255
    const-string v23, "exclusionList"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_265

    .line 257
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_60

    .line 258
    :cond_265
    const-string v23, "eos"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_26c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_160 .. :try_end_26c} :catch_be
    .catch Ljava/io/EOFException; {:try_start_160 .. :try_end_26c} :catch_dc
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_26c} :catch_106
    .catchall {:try_start_160 .. :try_end_26c} :catchall_158

    move-result v23

    if-eqz v23, :cond_2b3

    .line 268
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_31a

    .line 269
    :try_start_275
    new-instance v2, Landroid/net/IpConfiguration;

    invoke-direct {v2}, Landroid/net/IpConfiguration;-><init>()V

    .line 270
    .restart local v2    # "config":Landroid/net/IpConfiguration;
    invoke-virtual {v13, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    sget-object v23, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_334

    .line 285
    const-string v23, "Ignore invalid ip assignment while reading."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 286
    sget-object v23, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v23

    iput-object v0, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 290
    :goto_297
    sget-object v23, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual/range {v19 .. v19}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_33e

    .line 310
    const-string v23, "Ignore invalid proxy settings while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 311
    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v23

    iput-object v0, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_2b1
    .catch Ljava/io/EOFException; {:try_start_275 .. :try_end_2b1} :catch_dc
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_2b1} :catch_106
    .catchall {:try_start_275 .. :try_end_2b1} :catchall_158

    goto/16 :goto_51

    .line 261
    .end local v2    # "config":Landroid/net/IpConfiguration;
    :cond_2b3
    :try_start_2b3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignore unknown key "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "while reading"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_2d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b3 .. :try_end_2d6} :catch_be
    .catch Ljava/io/EOFException; {:try_start_2b3 .. :try_end_2d6} :catch_dc
    .catch Ljava/io/IOException; {:try_start_2b3 .. :try_end_2d6} :catch_106
    .catchall {:try_start_2b3 .. :try_end_2d6} :catchall_158

    goto/16 :goto_60

    .line 274
    .restart local v2    # "config":Landroid/net/IpConfiguration;
    :pswitch_2d8
    :try_start_2d8
    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 275
    iput-object v10, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_297

    .line 278
    :pswitch_2df
    iput-object v10, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_297

    .line 281
    :pswitch_2e2
    const-string v23, "BUG: Found UNASSIGNED IP on file, use DHCP"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 282
    sget-object v23, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v23

    iput-object v0, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_297

    .line 298
    :pswitch_2f2
    new-instance v17, Landroid/net/ProxyInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 299
    .local v17, "proxyPacProperties":Landroid/net/ProxyInfo;
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 300
    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    goto/16 :goto_51

    .line 303
    .end local v17    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_303
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_51

    .line 306
    :pswitch_309
    const-string v23, "BUG: Found UNASSIGNED proxy on file, use NONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 307
    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v23

    iput-object v0, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_51

    .line 315
    .end local v2    # "config":Landroid/net/IpConfiguration;
    :cond_31a
    const-string v23, "Missing id while parsing configuration"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->log(Ljava/lang/String;)V
    :try_end_323
    .catch Ljava/io/EOFException; {:try_start_2d8 .. :try_end_323} :catch_dc
    .catch Ljava/io/IOException; {:try_start_2d8 .. :try_end_323} :catch_106
    .catchall {:try_start_2d8 .. :try_end_323} :catchall_158

    goto/16 :goto_51

    .line 325
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v18    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v21    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_325
    move-exception v23

    goto/16 :goto_3e

    .end local v9    # "in":Ljava/io/DataInputStream;
    .end local v22    # "version":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    :catch_328
    move-exception v24

    goto/16 :goto_15f

    .line 322
    :catchall_32b
    move-exception v23

    goto/16 :goto_15a

    .line 319
    :catch_32e
    move-exception v4

    goto/16 :goto_108

    .line 318
    :catch_331
    move-exception v23

    goto/16 :goto_de

    .line 272
    :pswitch_data_334
    .packed-switch 0x1
        :pswitch_2d8
        :pswitch_2df
        :pswitch_2e2
    .end packed-switch

    .line 290
    :pswitch_data_33e
    .packed-switch 0x1
        :pswitch_40
        :pswitch_2f2
        :pswitch_303
        :pswitch_309
    .end packed-switch
.end method

.method public writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/net/IpConfigStore$1;-><init>(Lcom/android/server/net/IpConfigStore;Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 174
    return-void
.end method
