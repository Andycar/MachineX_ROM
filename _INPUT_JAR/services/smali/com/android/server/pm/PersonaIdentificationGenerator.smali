.class public Lcom/android/server/pm/PersonaIdentificationGenerator;
.super Ljava/lang/Object;
.source "PersonaIdentificationGenerator.java"


# static fields
.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/data/idkey"

.field private static final TAG:Ljava/lang/String; = "PersonaIdentificationGenerator"

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "uniqueIdKey"

.field private static final VERSION:Ljava/lang/String; = "01"


# instance fields
.field private final mCryptoScheme:Ljava/lang/String;

.field private final mDigest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "cryptoScheme"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_d

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "need to provide a valid crypto scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_d
    :try_start_d
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_15} :catch_18

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    .line 61
    return-void

    .line 56
    :catch_18
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get hash checksum provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "plain"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 105
    .local v3, "key":Ljavax/crypto/SecretKey;
    if-eqz v3, :cond_1e

    .line 106
    iget-object v4, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 107
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 109
    .local v2, "encryptedBytes":[B
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 111
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encryptedBytes":[B
    :cond_1e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing key for persona id encryption"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_26} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_26} :catch_2f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_26} :catch_38
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_26} :catch_41
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_26} :catch_4a

    .line 113
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    :catch_26
    move-exception v1

    .line 114
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing encryption algorithm"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 115
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2f
    move-exception v1

    .line 116
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "invalid key"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 117
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_38
    move-exception v1

    .line 118
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "illegal block size"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 119
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_41
    move-exception v1

    .line 120
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "bad padding exception"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 121
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4a
    move-exception v1

    .line 122
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing padding scheme"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getChecksum(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljavax/crypto/SecretKey;
    .registers 19

    .prologue
    .line 132
    const/4 v6, 0x0

    .line 133
    .local v6, "in":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 136
    .local v11, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 137
    .local v10, "mKeyStore":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/File;

    const-string v13, "/data/idkey"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_be
    .catchall {:try_start_2 .. :try_end_11} :catchall_f1

    .line 140
    .local v3, "file":Ljava/io/File;
    :try_start_11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_59

    .line 141
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .local v12, "out":Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 150
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :goto_1e
    const/4 v13, 0x0

    invoke-virtual {v10, v6, v13}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_79
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_be
    .catchall {:try_start_11 .. :try_end_22} :catchall_f1

    .line 173
    :goto_22
    :try_start_22
    const-string/jumbo v13, "uniqueIdKey"

    invoke-virtual {v10, v13}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d2

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v13}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 175
    .local v4, "generator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 177
    .local v8, "key":Ljavax/crypto/SecretKey;
    new-instance v9, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v9, v8}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 178
    .local v9, "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    const-string/jumbo v13, "uniqueIdKey"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v9, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 180
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 181
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 186
    .end local v4    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v8    # "key":Ljavax/crypto/SecretKey;
    :goto_4a
    invoke-virtual {v9}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4d} :catch_be
    .catchall {:try_start_22 .. :try_end_4d} :catchall_f1

    move-result-object v13

    .line 191
    if-eqz v6, :cond_53

    .line 192
    :try_start_50
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_53
    if-eqz v11, :cond_58

    .line 196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_de

    .line 203
    .end local v3    # "file":Ljava/io/File;
    .end local v9    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v10    # "mKeyStore":Ljava/security/KeyStore;
    :cond_58
    :goto_58
    return-object v13

    .line 143
    .restart local v3    # "file":Ljava/io/File;
    .restart local v10    # "mKeyStore":Ljava/security/KeyStore;
    :cond_59
    :try_start_59
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_72

    .line 144
    const-string v13, "PersonaIdentificationGenerator"

    const-string v14, "Creating key file again..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_1e

    .line 147
    :cond_72
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_77} :catch_79
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_77} :catch_be
    .catchall {:try_start_59 .. :try_end_77} :catchall_f1

    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    goto :goto_1e

    .line 151
    :catch_79
    move-exception v5

    .line 152
    .local v5, "ie":Ljava/io/IOException;
    :try_start_7a
    const-string v13, "PersonaIdentificationGenerator"

    const-string v14, "io exception when getting key, removing file"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    if-eqz v11, :cond_10c

    .line 155
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_86} :catch_be
    .catchall {:try_start_7a .. :try_end_86} :catchall_f1

    .line 156
    const/4 v11, 0x0

    move-object v12, v11

    .line 158
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :goto_88
    if-eqz v6, :cond_8e

    .line 159
    :try_start_8a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 160
    const/4 v6, 0x0

    .line 163
    :cond_8e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_b1

    .line 164
    const-string v13, "PersonaIdentificationGenerator"

    const-string v14, "failed to delete file"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9b} :catch_109
    .catchall {:try_start_8a .. :try_end_9b} :catchall_106

    .line 165
    const/4 v13, 0x0

    .line 191
    if-eqz v6, :cond_a1

    .line 192
    :try_start_9e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_a1
    if-eqz v12, :cond_a6

    .line 196
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a6} :catch_a8

    :cond_a6
    :goto_a6
    move-object v11, v12

    .line 200
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_58

    .line 198
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catch_a8
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string v14, "PersonaIdentificationGenerator"

    const-string v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    :cond_b1
    :try_start_b1
    new-instance v11, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v11, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b7} :catch_109
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_106

    .line 169
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_b9
    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_be
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_f1

    goto/16 :goto_22

    .line 187
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "ie":Ljava/io/IOException;
    .end local v10    # "mKeyStore":Ljava/security/KeyStore;
    :catch_be
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    :goto_bf
    :try_start_bf
    const-string v13, "PersonaIdentificationGenerator"

    const-string v14, "failed to get secret key"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_f1

    .line 191
    if-eqz v6, :cond_cb

    .line 192
    :try_start_c8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_cb
    if-eqz v11, :cond_d0

    .line 196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d0} :catch_e8

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d0
    :goto_d0
    const/4 v13, 0x0

    goto :goto_58

    .line 183
    .restart local v3    # "file":Ljava/io/File;
    .restart local v10    # "mKeyStore":Ljava/security/KeyStore;
    :cond_d2
    :try_start_d2
    const-string/jumbo v13, "uniqueIdKey"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v9

    check-cast v9, Ljava/security/KeyStore$SecretKeyEntry;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_dc} :catch_be
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_f1

    .restart local v9    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    goto/16 :goto_4a

    .line 198
    :catch_de
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string v14, "PersonaIdentificationGenerator"

    const-string v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 198
    .end local v3    # "file":Ljava/io/File;
    .end local v9    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v10    # "mKeyStore":Ljava/security/KeyStore;
    .local v2, "e":Ljava/lang/Exception;
    :catch_e8
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string v13, "PersonaIdentificationGenerator"

    const-string v14, "failed to close IO"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_f1
    move-exception v13

    .line 191
    :goto_f2
    if-eqz v6, :cond_f7

    .line 192
    :try_start_f4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_f7
    if-eqz v11, :cond_fc

    .line 196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fc} :catch_fd

    .line 200
    :cond_fc
    :goto_fc
    throw v13

    .line 198
    :catch_fd
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v14, "PersonaIdentificationGenerator"

    const-string v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "ie":Ljava/io/IOException;
    .restart local v10    # "mKeyStore":Ljava/security/KeyStore;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catchall_106
    move-exception v13

    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_f2

    .line 187
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catch_109
    move-exception v2

    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_bf

    :cond_10c
    move-object v12, v11

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_88
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "01"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "plainText":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaIdentificationGenerator;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
