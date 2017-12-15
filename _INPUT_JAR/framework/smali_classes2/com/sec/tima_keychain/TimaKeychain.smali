.class public Lcom/sec/tima_keychain/TimaKeychain;
.super Ljava/lang/Object;
.source "TimaKeychain.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TIMAKeyChain"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "TIMAKeyChain"

    const-string v13, "getAliasListFromTimaKeystore with package"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p0, :cond_17

    const-string v12, ""

    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 205
    :cond_17
    const-string v11, "TIMAKeyChain"

    const-string v12, "getAliasListFromTimaKeystore received empty/null packageName"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 242
    :cond_22
    :goto_22
    return-object v0

    .line 210
    :cond_23
    :try_start_23
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v3

    .line 212
    .local v3, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getCertificateAliasesHavingPrivateKey()Ljava/util/List;

    move-result-object v2

    .line 214
    .local v2, "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, p0}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 215
    .local v4, "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v10

    .line 217
    .local v10, "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_22

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_96

    .line 219
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_5a

    :try_start_40
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5a

    move v8, v7

    .line 220
    .local v8, "isWifiAliasesExist":Z
    :goto_47
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5c

    .line 221
    .local v7, "isPrivKeyAliasesExist":Z
    :goto_4f
    if-nez v7, :cond_5e

    .line 223
    const-string v11, "TIMAKeyChain"

    const-string v12, "all the aliases not valid since doenst have private key pair"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_22

    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "isPrivKeyAliasesExist":Z
    .end local v8    # "isWifiAliasesExist":Z
    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5a
    move v8, v11

    .line 219
    goto :goto_47

    .restart local v8    # "isWifiAliasesExist":Z
    :cond_5c
    move v7, v11

    .line 220
    goto :goto_4f

    .line 224
    .restart local v7    # "isPrivKeyAliasesExist":Z
    :cond_5e
    if-nez v8, :cond_62

    if-eqz v7, :cond_98

    .line 225
    :cond_62
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 227
    .local v9, "tempAlias":Ljava/lang/String;
    if-eqz v8, :cond_7d

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 228
    invoke-interface {v1, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    :cond_7d
    if-eqz v7, :cond_66

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_66

    .line 232
    invoke-interface {v1, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_88} :catch_89

    goto :goto_66

    .line 237
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isPrivKeyAliasesExist":Z
    .end local v8    # "isWifiAliasesExist":Z
    .end local v9    # "tempAlias":Ljava/lang/String;
    :catch_89
    move-exception v5

    move-object v0, v1

    .line 238
    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v4    # "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "e":Ljava/lang/Exception;
    :goto_8b
    const-string v11, "TIMAKeyChain"

    const-string v12, "Exception"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 237
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_96
    move-exception v5

    goto :goto_8b

    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v4    # "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "isPrivKeyAliasesExist":Z
    .restart local v8    # "isWifiAliasesExist":Z
    .restart local v10    # "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    move-object v0, v1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_22
.end method

.method public static getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 12
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v8, 0x0

    .line 144
    .local v8, "x509CertChain":[Ljava/security/cert/X509Certificate;
    const-string v9, "TIMAKeyChain"

    const-string v10, "getCertificateChainFromTimaKeystore called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-eqz p0, :cond_12

    const-string v9, ""

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 146
    :cond_12
    const-string v9, "TIMAKeyChain"

    const-string v10, "getCertificateChainFromTimaKeystore received empty/null alias"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_19
    :goto_19
    return-object v8

    .line 150
    :cond_1a
    :try_start_1a
    const-string v9, "TimaKeyStore"

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 151
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 152
    const-string v9, "PKCS11"

    const-string v10, "SECPkcs11"

    invoke-static {v9, v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 153
    .local v7, "secpkcs11Ks":Ljava/security/KeyStore;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 154
    invoke-virtual {v7, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 156
    .local v2, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_19

    .line 157
    array-length v9, v2

    new-array v8, v9, [Ljava/security/cert/X509Certificate;

    .line 158
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    array-length v9, v2

    if-ge v4, v9, :cond_19

    .line 159
    aget-object v9, v2, v4

    check-cast v9, Ljava/security/cert/X509Certificate;

    aput-object v9, v8, v4
    :try_end_45
    .catch Ljava/security/NoSuchProviderException; {:try_start_1a .. :try_end_45} :catch_48
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_45} :catch_51
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_45} :catch_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_45} :catch_63
    .catch Ljava/security/cert/CertificateException; {:try_start_1a .. :try_end_45} :catch_6c

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 162
    .end local v2    # "certChain":[Ljava/security/cert/Certificate;
    .end local v4    # "i":I
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "secpkcs11Ks":Ljava/security/KeyStore;
    :catch_48
    move-exception v3

    .line 163
    .local v3, "e":Ljava/security/NoSuchProviderException;
    const-string v9, "TIMAKeyChain"

    const-string v10, "java.security.NoSuchProviderException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 164
    .end local v3    # "e":Ljava/security/NoSuchProviderException;
    :catch_51
    move-exception v3

    .line 165
    .local v3, "e":Ljava/security/KeyStoreException;
    const-string v9, "TIMAKeyChain"

    const-string v10, "KeyStoreException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 166
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_5a
    move-exception v5

    .line 167
    .local v5, "ioe":Ljava/io/IOException;
    const-string v9, "TIMAKeyChain"

    const-string v10, "IOException"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 168
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_63
    move-exception v0

    .line 169
    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "TIMAKeyChain"

    const-string v10, "NoSuchAlgorithmException"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 170
    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_6c
    move-exception v1

    .line 171
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v9, "TIMAKeyChain"

    const-string v10, "CertificateException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public static getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 5
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "opensslPKey":Ljava/security/PrivateKey;
    const-string v2, "TIMAKeyChain"

    const-string v3, "getPrivateKeyFromOpenSSL called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p0, :cond_12

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 183
    :cond_12
    const-string v2, "TIMAKeyChain"

    const-string v3, "getPrivateKeyFromOpenSSL received empty/null alias"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_19
    return-object v1

    .line 185
    :cond_1a
    new-instance v0, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    .line 186
    .local v0, "opensslHelper":Lcom/sec/smartcard/openssl/OpenSSLHelper;
    invoke-virtual {v0, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngine(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 187
    invoke-virtual {v0, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    goto :goto_19

    .line 189
    :cond_2a
    const-string v2, "TIMAKeyChain"

    const-string v3, "Unable to register openssl engine"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public static isTimaKeystoreAndCCMEnabledForCaller()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "isCCMEnabled":Z
    const/4 v2, 0x0

    .line 66
    .local v2, "isTimaKeystoreEnabled":Z
    const-string v8, "TIMAKeyChain"

    const-string v9, "isTimaKeystoreAndCCMEnabled called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_b
    const-string/jumbo v8, "tima"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 71
    .local v3, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v3, :cond_49

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 73
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 75
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_3b

    .line 76
    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForCaller()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v8

    if-nez v8, :cond_4e

    move v1, v6

    .line 80
    :cond_3b
    :goto_3b
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    .line 82
    .local v5, "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v5, :cond_49

    .line 83
    invoke-virtual {v5}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabled()Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_48} :catch_50

    move-result v2

    .line 91
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    .end local v5    # "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_49
    :goto_49
    if-eqz v1, :cond_59

    if-eqz v2, :cond_59

    :goto_4d
    return v6

    .restart local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :cond_4e
    move v1, v7

    .line 76
    goto :goto_3b

    .line 87
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :catch_50
    move-exception v4

    .line 88
    .local v4, "re":Landroid/os/RemoteException;
    const-string v8, "TIMAKeyChain"

    const-string v9, "RemoteException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_59
    move v6, v7

    .line 91
    goto :goto_4d
.end method

.method public static isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "isCCMEnabled":Z
    const/4 v2, 0x0

    .line 102
    .local v2, "isTimaKeystoreEnabled":Z
    const-string v8, "TIMAKeyChain"

    const-string v9, "isTimaKeystoreAndCCMEnabledForPackage called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p0, :cond_15

    const-string v8, ""

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 104
    :cond_15
    const-string v8, "TIMAKeyChain"

    const-string v9, "isTimaKeystoreAndCCMEnabledForPackage received empty/null package name"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1c
    if-eqz v1, :cond_9b

    if-eqz v2, :cond_9b

    :goto_20
    return v6

    .line 108
    :cond_21
    :try_start_21
    const-string/jumbo v8, "tima"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 110
    .local v3, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v3, :cond_5f

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 112
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 114
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_51

    .line 115
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v8

    if-nez v8, :cond_90

    move v1, v6

    .line 120
    :cond_51
    :goto_51
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    .line 122
    .local v5, "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v5, :cond_5f

    .line 123
    invoke-virtual {v5, p0}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_5e} :catch_92

    move-result v2

    .line 131
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    .end local v5    # "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_5f
    :goto_5f
    const-string v8, "TIMAKeyChain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCCMEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v8, "TIMAKeyChain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isTimaKeystoreEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .restart local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :cond_90
    move v1, v7

    .line 115
    goto :goto_51

    .line 127
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :catch_92
    move-exception v4

    .line 128
    .local v4, "re":Landroid/os/RemoteException;
    const-string v8, "TIMAKeyChain"

    const-string v9, "RemoteException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_9b
    move v6, v7

    .line 135
    goto :goto_20
.end method
