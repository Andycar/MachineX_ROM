.class public Lcom/android/settings/wifi/WifiShareProfile;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field private final DEVICE_PICKER_REQUEST:I

.field private P2pPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private SelectedP2pPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field currentApInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/AlertDialog;

.field private mCandidateAPs:Landroid/preference/PreferenceGroup;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mP2pConnectedOnSend:Z

.field private mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mSessionKey:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private selectedApCount:I

.field selectedApIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedSSID:Ljava/lang/String;

.field private wifiIsEnabled:Z

.field private wifiP2pConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 121
    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    .line 129
    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 132
    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    .line 155
    const-string v0, "0b1e96db05d64ea4"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mSessionKey:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    .line 161
    iput v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    .line 178
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$1;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    .line 641
    const/16 v0, 0x21b1

    iput v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->DEVICE_PICKER_REQUEST:I

    return-void
.end method

.method private EncryptData()I
    .locals 15

    .prologue
    .line 602
    const/4 v6, 0x0

    .line 603
    .local v6, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 604
    .local v8, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 605
    .local v2, "fiTemp":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 606
    .local v3, "foTemp":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 609
    .local v10, "ret":I
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/wifi/WifiShareProfile;->mSessionKey:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiShareProfile;->StreamCrypt(Ljava/lang/String;)V

    .line 610
    new-instance v7, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/wifi_share_profile/selected_conf.conf"

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v11, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 612
    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .local v4, "foTemp":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiShareProfile;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v8

    .line 614
    const/4 v9, 0x0

    .line 615
    .local v9, "readcount":I
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 616
    .local v0, "buffer":[B
    :goto_0
    if-eqz v7, :cond_4

    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v7, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_4

    .line 617
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 620
    .end local v0    # "buffer":[B
    .end local v9    # "readcount":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 621
    .end local v7    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 622
    const/4 v10, -0x1

    .line 625
    if-eqz v8, :cond_0

    .line 626
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 627
    :cond_0
    if-eqz v3, :cond_1

    .line 628
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 629
    :cond_1
    if-eqz v6, :cond_2

    .line 630
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 631
    :cond_2
    if-eqz v2, :cond_3

    .line 632
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 638
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return v10

    .line 625
    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v9    # "readcount":I
    :cond_4
    if-eqz v8, :cond_5

    .line 626
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 627
    :cond_5
    if-eqz v4, :cond_6

    .line 628
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 629
    :cond_6
    if-eqz v7, :cond_7

    .line 630
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 631
    :cond_7
    if-eqz v2, :cond_8

    .line 632
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 636
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 633
    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 634
    .local v5, "ioe":Ljava/io/IOException;
    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ioexception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v10, -0x1

    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 637
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 633
    .end local v0    # "buffer":[B
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v9    # "readcount":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 634
    .restart local v5    # "ioe":Ljava/io/IOException;
    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ioexception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v10, -0x1

    .line 637
    goto :goto_2

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 625
    :goto_3
    if-eqz v8, :cond_9

    .line 626
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 627
    :cond_9
    if-eqz v3, :cond_a

    .line 628
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 629
    :cond_a
    if-eqz v6, :cond_b

    .line 630
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 631
    :cond_b
    if-eqz v2, :cond_c

    .line 632
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 636
    :cond_c
    :goto_4
    throw v11

    .line 633
    :catch_3
    move-exception v5

    .line 634
    .restart local v5    # "ioe":Ljava/io/IOException;
    const-string v12, "WifiShareProfile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ioexception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v10, -0x1

    goto :goto_4

    .line 624
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 620
    :catch_4
    move-exception v1

    goto/16 :goto_1

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private StreamCrypt(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 687
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 688
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 689
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 690
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 692
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    .line 693
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v2, Lcom/android/settings/wifi/WifiShareProfile;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 695
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiShareProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiShareProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->updateWifiP2pDeviceList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->convertSelectedApIndexesIntoEncrypedFile()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->startWifiP2pDevicePicker()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiShareProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiShareProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiShareProfile;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    return-void
.end method

.method private constructCurrentApInfoMap()V
    .locals 20

    .prologue
    .line 466
    new-instance v13, Ljava/io/File;

    const-string v15, "/data/misc/wifi_share_profile/raw_conf.conf"

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v13, "rawConfFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 468
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 470
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 471
    .local v11, "msg":Landroid/os/Message;
    const/16 v15, 0xcd

    iput v15, v11, Landroid/os/Message;->what:I

    .line 473
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v5, "args":Landroid/os/Bundle;
    const-string v15, "OPTION"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    const-string v15, "PATH"

    const-string v16, "/data/misc/wifi_share_profile/raw_conf.conf"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iput-object v5, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v11}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v15

    if-nez v15, :cond_5

    .line 479
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_1

    const-string v15, "WifiShareProfile"

    const-string v16, "BACK UP !!!!!!!!!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v3, "apIndex":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v4, "apNetwork":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 488
    .local v6, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 489
    .local v8, "currentHighestPriority":I
    const/4 v14, 0x0

    .line 490
    .local v14, "ssid":Ljava/lang/String;
    const/4 v12, 0x0

    .line 492
    .local v12, "priority":I
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 493
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 496
    .local v10, "line":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 498
    if-nez v10, :cond_6

    .line 548
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 549
    :cond_3
    if-eqz v7, :cond_15

    .line 551
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    .line 557
    .end local v3    # "apIndex":Ljava/lang/StringBuilder;
    .end local v4    # "apNetwork":Ljava/lang/StringBuilder;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v8    # "currentHighestPriority":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "priority":I
    .end local v14    # "ssid":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 481
    :cond_5
    const-string v15, "WifiShareProfile"

    const-string v16, "Failed to write networks"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 500
    .restart local v3    # "apIndex":Ljava/lang/StringBuilder;
    .restart local v4    # "apNetwork":Ljava/lang/StringBuilder;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "currentHighestPriority":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "priority":I
    .restart local v14    # "ssid":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v15, "\n"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 502
    const-string v15, "\tssid="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "\tkey_mgmt="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "\tauth_alg="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "\teap="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 506
    :cond_7
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_8
    const-string v15, "\tssid="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 510
    const/4 v15, 0x6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 513
    :cond_9
    const-string v15, "\tpriority="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 514
    const/16 v15, 0xa

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 517
    :cond_a
    const-string v15, "\tcaptive_portal="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "\tauthenticated="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "\tusable_internet="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "\tskip_internet_check="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 524
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const/16 v15, 0xa

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    const-string v15, "}"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 529
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tkey_mgmt=NONE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tauth_alg=OPEN SHARED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\teap="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 532
    :cond_c
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - (EXCLUDE OPEN or EAP NETWORK!)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_d
    :goto_2
    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 542
    const/4 v15, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 545
    :catch_0
    move-exception v9

    move-object v6, v7

    .line 546
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_e

    const-string v15, "WifiShareProfile"

    const-string v16, "Exception while updating existing AP list"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 548
    :cond_e
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 549
    :cond_f
    if-eqz v6, :cond_4

    .line 551
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 552
    :catch_1
    move-exception v9

    .line 553
    .local v9, "e":Ljava/io/IOException;
    const-string v15, "WifiShareProfile"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 533
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_10
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tshared=1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 534
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - (EXCLUDE SHARED NETWORK!)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 548
    :catchall_0
    move-exception v15

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :goto_4
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 549
    :cond_11
    if-eqz v6, :cond_12

    .line 551
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 554
    :cond_12
    :goto_5
    throw v15

    .line 535
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_13
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tvendor_spec_ssid=1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 536
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - (EXCLUDE CARRIER DEFAULT NETWORK!)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 538
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v14, v1, v2, v12}, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 552
    :catch_2
    move-exception v9

    .line 553
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v15, "WifiShareProfile"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 554
    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 552
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "line":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 553
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v16, "WifiShareProfile"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 548
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    goto/16 :goto_4

    .line 545
    :catch_4
    move-exception v9

    goto/16 :goto_3

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_15
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private convertSelectedApIndexesIntoEncrypedFile()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    .line 560
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/wifi_share_profile/selected_conf.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v7, "selectedConfFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v2, "encryptedFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 563
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 565
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v6, "selectedConf":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "builderSelectedSSID":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 571
    iget-object v9, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 572
    sget-boolean v8, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v8, :cond_2

    const-string v9, "WifiShareProfile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertSelectedApIndexesIntoEncrypedFile - AP: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->updatedNetwork()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v8, ",\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 580
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    .line 584
    :cond_5
    const/4 v3, 0x0

    .line 587
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .local v4, "fw":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 592
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 597
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->EncryptData()I

    .line 598
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 599
    :cond_6
    return-void

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v8, "WifiShareProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create file failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 592
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 594
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    const-string v8, "WifiShareProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while closing encryptedFile. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 592
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 594
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 592
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 589
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 700
    sget-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 701
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 702
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 705
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 708
    sget-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/WifiShareProfile;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 709
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private initPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 307
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    .line 311
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    sget-boolean v1, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiShareProfile"

    const-string v2, "Wifi is turned off. Hide the APs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 333
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 319
    .local v8, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 320
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0a05a7

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 324
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 325
    .local v6, "apIndex":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget v5, v5, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    .local v0, "temp_c":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 332
    .end local v0    # "temp_c":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    .end local v6    # "apIndex":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showAccessTimeoutAlertDialog(I)V
    .locals 5
    .param p1, "selectedApId"    # I

    .prologue
    .line 361
    move v0, p1

    .line 362
    .local v0, "apId":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a05a9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0049

    new-instance v4, Lcom/android/settings/wifi/WifiShareProfile$6;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$6;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01d1

    new-instance v4, Lcom/android/settings/wifi/WifiShareProfile$5;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$5;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiShareProfile$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$4;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    .line 408
    return-void
.end method

.method private startWifiP2pDevicePicker()V
    .locals 2

    .prologue
    .line 643
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_DEVICE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 648
    const/16 v1, 0x21b1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiShareProfile;->startActivityForResult(Landroid/content/Intent;I)V

    .line 649
    return-void
.end method

.method private updateWifiP2pDeviceList()V
    .locals 8

    .prologue
    .line 652
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 653
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiShareProfile"

    const-string v6, "updateWifiP2pDeviceList - No devices found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    return-void

    .line 655
    :cond_1
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiShareProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWifiP2pDeviceList - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " peer(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_2
    const/4 v1, 0x0

    .line 657
    .local v1, "deviceToDelete":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 658
    .local v4, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "WifiShareProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "       deviceName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deviceAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v5, :cond_5

    .line 662
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 663
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0xcc

    iput v5, v3, Landroid/os/Message;->what:I

    .line 665
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 666
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "deviceAddress"

    iget-object v6, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v5, "filePath"

    const-string v6, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v5, "senderName"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v5, "SSIDs"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v6, "disconnectOnCompletion"

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 671
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 672
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_7

    .line 673
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "WifiShareProfile"

    const-string v6, "SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE sent."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4
    :goto_2
    move-object v1, v4

    .line 678
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "WifiShareProfile"

    const-string v6, "     HIT!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 670
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 675
    :cond_7
    const-string v5, "WifiShareProfile"

    const-string v6, "SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 454
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "encryptedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "com.android.settings.wifi.WifiShareProfileSelected"

    const-string v3, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v2, "com.android.settings.wifi.WifiShareProfileSelectedSSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 463
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    .line 274
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->constructCurrentApInfoMap()V

    .line 275
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    .line 276
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 412
    const/16 v1, 0x21b1

    if-ne p1, v1, :cond_1

    .line 413
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    .line 414
    const-string v1, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 415
    .local v0, "deviceList":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 417
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    .line 425
    .end local v0    # "deviceList":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    if-nez p2, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->addPreferencesFromResource(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 211
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    .line 214
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$2;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$3;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 264
    const-string v0, "candidate_aps"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v3, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 435
    .line 439
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    const v1, 0x7f04028c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 303
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 304
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 337
    instance-of v4, p2, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    if-eqz v4, :cond_2

    move-object v0, p2

    .line 338
    check-cast v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    .line 341
    .local v0, "candidateAP":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    const/4 v3, 0x0

    .local v3, "selectedIndex":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 342
    iget-object v5, v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiShareProfile;->showAccessTimeoutAlertDialog(I)V

    .line 347
    iget v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    .line 349
    sget-boolean v4, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v4, :cond_2

    .line 350
    const-string v4, "WifiShareProfile"

    const-string v5, "<selectedApIndexes>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, "index":Ljava/lang/String;
    const-string v4, "WifiShareProfile"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "candidateAP":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    .end local v3    # "selectedIndex":I
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 444
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 445
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 450
    return-void
.end method
