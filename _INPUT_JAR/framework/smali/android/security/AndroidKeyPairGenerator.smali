.class public Landroid/security/AndroidKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyPairGenerator.java"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mSpec:Landroid/security/KeyPairGeneratorSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method

.method private static getArgsForKeyType(ILjava/security/spec/AlgorithmParameterSpec;)[[B
    .registers 8
    .param p0, "keyType"    # I
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    sparse-switch p0, :sswitch_data_48

    .line 184
    :cond_5
    const/4 v2, 0x0

    check-cast v2, [[B

    :goto_8
    return-object v2

    .line 171
    :sswitch_9
    instance-of v2, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 172
    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 173
    .local v1, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    new-array v2, v5, [[B

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_8

    .line 177
    .end local v1    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :sswitch_1d
    instance-of v2, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v2, :cond_5

    move-object v0, p1

    .line 178
    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    .line 179
    .local v0, "dsaSpec":Ljava/security/spec/DSAParameterSpec;
    const/4 v2, 0x3

    new-array v2, v2, [[B

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_8

    .line 169
    nop

    :sswitch_data_48
    .sparse-switch
        0x6 -> :sswitch_9
        0x74 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "keyType"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 158
    const-string/jumbo v0, "sha256WithRSA"

    .line 162
    :goto_b
    return-object v0

    .line 159
    :cond_c
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 160
    const-string/jumbo v0, "sha1WithDSA"

    goto :goto_b

    .line 161
    :cond_18
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 162
    const-string/jumbo v0, "sha256WithECDSA"

    goto :goto_b

    .line 164
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 19

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    if-nez v1, :cond_14

    .line 78
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Must call initialize with an android.security.KeyPairGeneratorSpec first"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_34

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v3, :cond_34

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Android keystore must be in initialized and unlocked state if encryption is required"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v1, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyTypeForAlgorithm(Ljava/lang/String;)I

    move-result v4

    .line 94
    .local v4, "keyType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/security/AndroidKeyPairGenerator;->getArgsForKeyType(ILjava/security/spec/AlgorithmParameterSpec;)[[B

    move-result-object v7

    .line 96
    .local v7, "args":[[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "privateKeyAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v5}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v6

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->generate(Ljava/lang/String;IIII[[B)Z

    move-result v1

    if-nez v1, :cond_91

    .line 99
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "could not generate key in keystore"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_91
    const-string v1, "keystore"

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v13

    .line 105
    .local v13, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :try_start_97
    invoke-virtual {v13, v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_9a
    .catch Ljava/security/InvalidKeyException; {:try_start_97 .. :try_end_9a} :catch_147

    move-result-object v15

    .line 110
    .local v15, "privKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->getPubkey(Ljava/lang/String;)[B

    move-result-object v17

    .line 114
    .local v17, "pubKeyBytes":[B
    :try_start_a3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    .line 115
    .local v14, "keyFact":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v14, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_b9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a3 .. :try_end_b9} :catch_150
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a3 .. :try_end_b9} :catch_159

    move-result-object v16

    .line 122
    .local v16, "pubKey":Ljava/security/PublicKey;
    new-instance v11, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .line 123
    .local v11, "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/AndroidKeyPairGenerator;->getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 133
    :try_start_10a
    invoke-virtual {v11, v15}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_162

    move-result-object v9

    .line 141
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    :try_start_10e
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_111
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_10e .. :try_end_111} :catch_172

    move-result-object v10

    .line 147
    .local v10, "certBytes":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v6

    invoke-virtual {v1, v3, v10, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_182

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v1, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t store certificate in AndroidKeyStore"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v9    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "certBytes":[B
    .end local v11    # "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    .end local v14    # "keyFact":Ljava/security/KeyFactory;
    .end local v15    # "privKey":Ljava/security/PrivateKey;
    .end local v16    # "pubKey":Ljava/security/PublicKey;
    .end local v17    # "pubKeyBytes":[B
    :catch_147
    move-exception v12

    .line 107
    .local v12, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t get key"

    invoke-direct {v1, v3, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    .end local v12    # "e":Ljava/security/InvalidKeyException;
    .restart local v15    # "privKey":Ljava/security/PrivateKey;
    .restart local v17    # "pubKeyBytes":[B
    :catch_150
    move-exception v12

    .line 117
    .local v12, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t instantiate key generator"

    invoke-direct {v1, v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v12    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_159
    move-exception v12

    .line 119
    .local v12, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "keystore returned invalid key encoding"

    invoke-direct {v1, v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 134
    .end local v12    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v11    # "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    .restart local v14    # "keyFact":Ljava/security/KeyFactory;
    .restart local v16    # "pubKey":Ljava/security/PublicKey;
    :catch_162
    move-exception v12

    .line 135
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v1, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate certificate"

    invoke-direct {v1, v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "cert":Ljava/security/cert/X509Certificate;
    :catch_172
    move-exception v12

    .line 143
    .local v12, "e":Ljava/security/cert/CertificateEncodingException;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v1, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t get encoding of certificate"

    invoke-direct {v1, v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    .end local v12    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v10    # "certBytes":[B
    :cond_182
    new-instance v1, Ljava/security/KeyPair;

    move-object/from16 v0, v16

    invoke-direct {v1, v0, v15}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 5
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot specify keysize with AndroidKeyPairGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 195
    if-nez p1, :cond_b

    .line 196
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "must supply params of type android.security.KeyPairGeneratorSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_b
    instance-of v1, p1, Landroid/security/KeyPairGeneratorSpec;

    if-nez v1, :cond_18

    .line 199
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "params must be of type android.security.KeyPairGeneratorSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    move-object v0, p1

    .line 203
    check-cast v0, Landroid/security/KeyPairGeneratorSpec;

    .line 205
    .local v0, "spec":Landroid/security/KeyPairGeneratorSpec;
    iput-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    .line 206
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    .line 207
    return-void
.end method
